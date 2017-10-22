class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  validates :quantity, numericality: { greater_than: 0 }
end
