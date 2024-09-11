class Stock < ApplicationRecord
  validates :price, :selling_price, :quantity, :stock_minimal, presence: true
  belongs_to :product
  validates :product_id, uniqueness: true
end
