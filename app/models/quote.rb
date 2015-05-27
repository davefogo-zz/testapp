class Quote < ActiveRecord::Base
	has_one :invoice

	after_save :generate_invoice, :if => :approved?

def approved?
 approved = true
end

def generate_invoice
    Invoice.create!(date: Time.now, company: self.company, product: self.product, quantity: self.quantity, price: self.price, quote_id: self.id )
end
end
