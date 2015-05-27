class Invoice < ActiveRecord::Base
  belongs_to :quote
end
