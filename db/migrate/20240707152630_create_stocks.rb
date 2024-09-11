class CreateStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :stocks do |t|
      t.decimal :price
      t.integer :quantity
      t.integer :stock_minimal
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
