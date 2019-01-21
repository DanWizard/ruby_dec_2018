class UsersController < ApplicationController
	def hello
		p "hello"
	end
	def hello2 
		@display = "Saying #{params[:word]}"
	end
	def helloJoe
		redirect_to '/say/a;sldkfja;sfdk'
	end
	def times
		if session[:count]
			session[:count]+= 1
		else 
			session[:count] = 0
		end
	end

	def reset
		session[:count] = nil
		redirect_to '/time'
	end


end
