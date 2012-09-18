class AdminUser < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable, :trackable
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
end
