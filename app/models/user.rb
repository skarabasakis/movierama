class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, confirmation: true, length: { within: Devise::password_length }

  has_many :movies
  has_many :ratings
end
