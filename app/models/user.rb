class User < ApplicationRecord
  validates :name, {presence: true, length: {maximum: 50}}
  #validates :password, {presence: true, length: {maximum: 50}}
  #validates :password, {presence: true, length: {minimum: 7}}
  validates :email, {uniqueness: true, presence: true}
  has_secure_password
  has_many :post
  has_many :follow
  has_many :auction
end
