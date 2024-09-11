class AddSellingpriceToStocks < ActiveRecord::Migration[7.1]
  def change
    add_column :stocks, :selling_price, :decimal
  end
end
