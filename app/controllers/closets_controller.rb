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

	# def create
	# 	@closet = @closet.


end