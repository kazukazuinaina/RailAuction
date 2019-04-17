class User < ApplicationRecord
  validates :name, {presence: true, length: {maximum: 50}}
  validates :password, {presence: true, length: {maximum: 50}}
  validates :password, {presence: true, length: {minimum: 7}}
end
