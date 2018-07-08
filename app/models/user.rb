class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, confirmation: true, length: { within: Devise::password_length }

  has_many :movies
  has_many :ratings

  def can_rate?(movie, score = nil)
    movie.user != self &&
      ratings.where(movie: movie).where(({score: score} if score)).empty?
  end

  def movie_ratings(movie)
    ratings.where(movie: movie)
  end

  def movie_rating(movie)
    movie_ratings(movie).first
  end
end
