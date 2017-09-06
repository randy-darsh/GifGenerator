class User < ApplicationRecord
  has_secure_password

  has_many :favorites
  has_many :gifs, through: :favorites
  validates :email, :username, presence: true, uniqueness: true
  validates :password, presence: true
end
