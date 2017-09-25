class Subscription < ApplicationRecord
  belongs_to :product
  belongs_to :cook
  belongs_to :user
end
