class Product < ApplicationRecord
  belongs_to :category
  belongs_to :cook, class_name: 'User'
  has_many :order_items

  def owner_of? (user)
    cook_id == user.id
  end
end
