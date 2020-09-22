class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 15 }
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/i}
  validates :password, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i }
  
  has_secure_password
  
  has_many :topics
end