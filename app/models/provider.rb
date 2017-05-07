class Provider < ApplicationRecord
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :confirmable, :database_authenticatable, :lockable,
         :registerable, :recoverable, :rememberable,
         :timeoutable, :trackable, :validatable

  has_many :products
  has_many :subscriptions
end