class UsersController < ApplicationController
	def grabAll
		render json: Product.all
	end
	def new

	end
	def show
		render json: Product.find(params[:id])
	end
	def showEdit
		@product= Product.find(params[:id])
	end
	def create
		Product.create(name:params[:name])
		redirect_to "/users"
	end
	def edit
		Product.update(params[:id], name:params[:name])
		redirect_to "/users/#{params[:id]}"
	end
	def num_of_all
		@count = Product.all.each.count
	end
end
