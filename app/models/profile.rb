class Profile < ApplicationRecord
  has_many :products, foreign_key: :cook_id, dependent: :destroy
  has_many :orders
  has_one :user

  enum role: [:user, :cook, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end
end