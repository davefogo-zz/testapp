class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.date :date
      t.string :company
      t.string :product
      t.integer :quantity
      t.decimal :price
      t.integer :total

      t.timestamps null: false
    end
  end
end
