class TimesController < ApplicationController
	def display
 	@time = DateTime.now()
	end
end
