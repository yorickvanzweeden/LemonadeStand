class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :confirmable, :database_authenticatable, :lockable,
         :registerable, :recoverable, :rememberable,
         :timeoutable, :trackable, :validatable

  has_many :products, foreign_key: :cook_id

  enum role: [:user, :cook, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end
end
