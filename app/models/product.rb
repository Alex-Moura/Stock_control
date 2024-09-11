class Product < ApplicationRecord
  has_one :stock, dependent: :destroy
  validates :name, presence: true
end
