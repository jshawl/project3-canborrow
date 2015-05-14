class ClosetsController < ApplicationController

	def index
		@closets = Closet.all
	end

	def show
		@closet = Closet.find(params[:id])
	end

	def new
		@closet = Closet.new
	end

	def create
		@closet = Closet.new(closet_params)
		if @closet.save
			redirect_to profile_path(@closet.profile)
		else
			render :new
		end
	end

	def edit
		@closet = Closet.find(params[:id])
	end

	def update
		# params[:profileID]
		# params[:garmentID]
		@closet = Closet.find(params[:id])			
		if @closet.update(closet_params)
			redirect_to profile_path(@closet.profile)
		else
			render :new
		end
			respond_to do |format|
				format.json {render :nothing}
			end
	end

	def destroy
		@closet = Closet.find(params[:id])
		@closet.destroy
		redirect_to profile_path
	end

	private
	def closet_params
		params.require(:closet).permit(:name, :profileID, :garmentID)
	end

end