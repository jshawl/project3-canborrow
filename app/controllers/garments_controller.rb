class GarmentsController < ApplicationController

	def show 
		@garment = Garment.find(params[:id])
	end

	def new 
		@garment = Garment.new
	end

	def create
		@closet = Closet.find(params[:closet_id])
		@garment = @closet.garments.new(garment_params)
			if @garment.save
			redirect_to user_path(@closet.user)
			else
			render :new
		end
	end

	def destroy
		@garment = @garment.find(params[:id])
		@garment.destroy
		redirect_to user_path
	end

	private

	def garment_params
		params.require(:garment).permit(:garment_url, :background_url, :name, :garment_type, :size, :gender)
	end

end