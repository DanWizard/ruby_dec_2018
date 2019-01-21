class SurveysController < ApplicationController
	def create
	end
	def actuallyCreate
		Dojo.create(name:params[:name], comment:params[:comment], lang:params[:language], location:params[:location])
		redirect_to "/results"
	end
	def show
		@dojo = Dojo.last
	end
end
