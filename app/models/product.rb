class Product < ApplicationRecord
  belongs_to :category
  belongs_to :cook, class_name: 'User'
  has_many :order_items
end
