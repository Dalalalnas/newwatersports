class OrdersController < ApplicationController
 before_filter :authorise, :except => :index

  # GET /orders
  # GET /orders.json
 
  # GET /orders/1
  # GET /orders/1.json
  
  
  
  def index
   
    @orders = Order.paginate(:page => params[:page], :per_page => 2)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  def show
    @order = Order.find(params[:id])

    @ride = Ride.find @order.ride_id
    
    @user = User.find @order.user_id

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new
  @ride = Ride.find(params[:oid])
  if @ride
        session[:ride_id] = @ride.id
  end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json   


    
  def create
   @ride = Ride.find params[:order][:ride_id]
    if @ride 
       @order = @ride.orders.create params[:order]
       @order.user_id = @current_user.id  # sets the user_id fk
       @order.save       # saves to the post table 
       
       
     end
    
    respond_to do |format|
      format.html {redirect_to @order}
    end
  end 
  

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end
end