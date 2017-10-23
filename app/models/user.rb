class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :confirmable, :database_authenticatable, :lockable,
         :registerable, :recoverable, :rememberable,
         :timeoutable, :trackable, :validatable

  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile

  after_initialize :init_profile

  def init_profile
    if new_record?
      build_profile
    end
  end
end
