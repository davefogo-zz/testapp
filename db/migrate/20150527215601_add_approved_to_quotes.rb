class AddApprovedToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :approved, :boolean
  end
end
