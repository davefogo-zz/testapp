class QuotesController < ApplicationController

	def index
		@quote = Quote.all
	end

	def show
		@quote = Quote.find(params[:id])
	end

	def new
		@quote = Quote.new
		
	end

	def create
		@quote = Quote.new(quote_params)

		if 
			@quote.save
				redirect_to @quote
		else
			render :action => "new"
		end
	end

	private

	def quote_params
		params.require(:quote).permit(:date, :company, :product, :quantity, :price, :total)
	end

end