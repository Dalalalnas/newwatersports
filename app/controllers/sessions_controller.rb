class SessionsController < ApplicationController
  def new
  end

 def create
   user = User.find_by_fname(params[:fname])	
   if user && user.authenticate(params[:password]) 			
   session[:user_id] = user.id		
   redirect_to root_path	
   else  	 		
	flash.now[:error] = "Invalid name/password combination."      	
	render 'new'		           #shows the signin page again 
    end
 end


def destroy
	if signed_in?
		session[:user_id] = nil					
	else
		flash[:notice] = "You need to sign in first"			
	end
	redirect_to signin_path
 end


end
