class RpGsController < ApplicationController
	def home
		if not session[:all]
			session[:all] = []
			session[:accumulate] = 0
		end
	end
	def logic
		if params[:farmAct]
			fAct = rand(10..20)
			allAct = session[:all]
			allAct.push({Farm: fAct, Cave: 0, House: 0, Casino: 0})
			session[:all] = allAct
			session[:accumulate] += fAct
			p session[:accumulate]
		end
		if params[:caveAct]
			fAct = rand(10..20)
			allAct = session[:all]
			allAct.push({Farm: 0, Cave: fAct, House: 0, Casino: 0})
			session[:all] = allAct
			session[:accumulate] += fAct
		end
		if params[:houseAct]
			fAct = rand(10..20)
			allAct = session[:all]
			allAct.push({Farm: 0, Cave: 0, House: fAct, Casino: 0})
			session[:all] = allAct
			session[:accumulate] += fAct
		end
		if params[:casinoAct]
			fAct = rand(10..20)
			allAct = session[:all]
			allAct.push({Farm: 0, Cave: 0, House: 0, Casino: fAct})
			session[:all] = allAct
			session[:accumulate] += fAct
		end
		redirect_to "/"
	end
end
