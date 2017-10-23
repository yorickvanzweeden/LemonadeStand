class Product < ApplicationRecord
  belongs_to :category
  belongs_to :cook, class_name: 'Profile'
  has_many :order_items

  def owner_of? (profile)
    cook_id == profile.id
  end
end
