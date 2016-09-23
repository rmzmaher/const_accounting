class MainController < ApplicationController
	def index
		#@total_price = Buy.total_price_per_good('')#test funtion
		#@total_paid = Pay.total_paid_for_contractor(1)
	end
	def show
		@buys =  Buy.where(date: Date.today.to_s)
		@pays =  Pay.where(date: Date.today.to_s)
		@total = Buy.total_cost_per_day(Date.today.to_s)+Pay.total_paid_per_day(Date.today.to_s)
	end
	def daily
		@date = Date.parse params[:id]
		@buys = Buy.get_buys_mod(@date.to_s)
		@pays = Pay.get_pays_mod(@date.to_s)
		@total = Buy.total_cost_per_day(@date.to_s)+Pay.total_paid_per_day(@date.to_s)
		render :json => {'buys': @buys, 'pays': @pays ,'total': @total, 'date': @date}
	end
	def report		
	end
end
