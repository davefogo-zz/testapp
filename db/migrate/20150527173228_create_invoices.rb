class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :date
      t.string :company
      t.string :product
      t.integer :quantity
      t.decimal :price
      t.integer :total
      t.references :quote, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
