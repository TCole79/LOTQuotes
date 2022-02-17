class User < ApplicationRecord
  has_secure_password
  acts_as_favoritor

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 5 }, on: :create  

  attribute :admin, default: false
  
 
end
