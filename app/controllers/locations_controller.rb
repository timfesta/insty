class LocationsController < ApplicationController

	def index	
	end

	def new
		@post = Post.find_by(params[:post_id])
		@location = Location.new
		render :new
	end

	def create
		@post = Post.find_by(params[:post_id])
		@location = @post.locations.create(location_params)
		@location.save
		redirect_to post_path(@post)
	end

	

	private
		def location_params
			params.require(:location).permit(:address, :longitude, :latitude)
		end
end
