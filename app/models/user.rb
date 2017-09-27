class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :confirmable, :database_authenticatable, :lockable,
         :registerable, :recoverable, :rememberable,
         :timeoutable, :trackable, :validatable

  enum role: [:user, :cook, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end
end
