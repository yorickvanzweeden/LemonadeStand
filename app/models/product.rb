class Product < ApplicationRecord
  belongs_to :category
  has_many :providers
  has_many :subscriptions
end
