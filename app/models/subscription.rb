class Subscription < ApplicationRecord
  belongs_to :product
  belongs_to :provider
  belongs_to :user
end
