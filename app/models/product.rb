class Product < ApplicationRecord
  belongs_to :category
  has_many :cooks
  has_many :subscriptions
end
