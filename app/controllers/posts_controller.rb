class PostsController < ApplicationController
   before_filter :authorise  #makes sure someone is signed in
	
	def create
		@ride = Ride.find params[:ride_id]
		if @ride 
		   @post = @ride.posts.create params[:post]
		   @post.user_id = @current_user.id  # sets the user_id fk
		   @post.save       # saves to the post table 
		   end
    
		respond_to do |format|
			format.html {redirect_to @ride}
		end
	end	

	def destroy
		@ride = Ride.find params[:ride_id]
		@post = Post.find (params[:id])	
		@post.destroy
	
	respond_to do |format|
		format.html {redirect_to @ride}
		end
	end
	
end
