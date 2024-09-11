class RemoveColumnsFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :price, :decimal
    remove_column :products, :stock_min, :integer
    remove_column :products, :stock_initial, :integer
    remove_column :products, :outputs, :integer
    remove_column :products, :selling_price, :decimal
  end
end
