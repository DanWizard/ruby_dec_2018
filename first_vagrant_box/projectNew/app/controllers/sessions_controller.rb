class SessionsController < ApplicationController
  def login
	session[:user_id] = nil
	p session[:user_id]
  end
  def new
  	session[:user_id] = nil
  	p session[:user_id]
  end
  def create
    @u = User.create(name:params[:name], email:params[:email], password:params[:password], password_confirmation:params[:confirm_password])
    if @u.errors.full_messages.length > 0
      flash[:register_notice] = @u.errors.full_messages
      p "fail"
      redirect_to '/sessions/register'
    else
      session[:user_id] = User.last.id
      p session[:user_id]
      p "success"
      redirect_to '/sessions/home'
    end
  end
  def home
    @info = User.find(session[:user_id])
    @secrets = Secret.all
  end
  def verify
  	begin
  		@u = User.find_by_email(params[:email]).try(:authenticate, params[:password])
  		session[:user_id] = u.id
  		p session[:user_id]
  		redirect_to '/sessions/home'
  	rescue
  		p "fail"
      flash[:notice] = "INVALID LOGIN"
  		redirect_to '/sessions/login'
  	end
  end
  def change
    @info = User.find(session[:user_id])
  end
  def commit_change
    @u = User.update(session[:user_id], name: params[:name], email: params[:email], password:params[:password], password_confirmation:params[:confirm_password])
    if @u.errors.full_messages.length > 0
      flash[:edit_notice] = @u.errors.full_messages
      redirect_to '/sessions/change'
    else
      redirect_to '/sessions/home'
    end
  end
  def delete
    User.find(session[:user_id]).destroy
    redirect_to '/sessions/register'
  end
  def secret
    @s =Secret.create(content:params[:secret], user_id:session[:user_id])
    if @s.errors.full_messages.length > 0
      flash[:secret_notice] = @s.errors.full_messages
      redirect_to '/sessions/home'
    else
      redirect_to '/sessions/home'
    end
  end
  def like
    @l =Like.create(user_id:session[:user_id], secret_id:params[:id])
      redirect_to '/sessions/home'
    
  end
end
