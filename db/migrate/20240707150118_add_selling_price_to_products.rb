class AddSellingPriceToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :selling_price, :decimal
  end
end
