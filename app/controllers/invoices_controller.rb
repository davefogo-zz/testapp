class InvoicesController < ApplicationController

	def index
		@invoice = Invoice.all
	end

	def show
		@invoice = Invoice.find(params[:id])
	end

	def new
		@invoice = Invoice.new
		
	end

	def create
		@invoice = Invoice.new(invoice_params)

		if 
			@invoice.save
				redirect_to @invoice
		else
			render :action => "new"
		end
	end

	private

	def invoice_params
		params.require(:invoice).permit(:date, :company, :product, :quantity, :price, :total, :quote_id)
	end

end