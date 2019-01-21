class DojosController < ApplicationController
  def show
  	@dojo = Dojo.all
  end
  def new
  	
  end
  def create
  	Dojo.create(state:params[:state], city:params[:city], branch:params[:branch], street:params[:street])
  	redirect_to "/dojos/show"
  end
  def destroy
  	Dojo.find(params[:id]).destroy
  	redirect_to "/dojos/show"
  end
  def showOne
  	@dojo = Dojo.find(params[:id])
  	@students = Dojo.find(params[:id]).students
  end
  def showEdit
  	@dojo = Dojo.find(params[:id])
  end
  def edit
  	Dojo.update(params[:id], state:params[:state], city:params[:city], branch:params[:branch], street:params[:street])
  	redirect_to "/dojos/show"
  end
  def createStudent
  	@dojo = Dojo.all
  	
  end
  def studentCreated
  	Student.create(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], dojo_id:Dojo.find_by(state:params[:state]).id)
  		redirect_to "/dojos/show"
  end
  def destroyStudent
  	Student.find(params[:id]).destroy
  	redirect_to "/dojos/show"
  end
  def show_one_student
  	@student = Student.find(params[:id])
  end
  def showEdit_student
  	@student = Student.find(params[:id])
  	@dojo = Dojo.all
  end
  def editStudent
  	Student.update(params[:id], first_name:params[:first_name], last_name:params[:last_name], email:params[:email], dojo_id:Dojo.find_by(state:params[:state]).id)
  	@id = Student.find(params[:id]).dojo_id
  	redirect_to "/dojos/show/#{@id}"
  end
end
