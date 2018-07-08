class Movie < ApplicationRecord
  belongs_to :user
  delegate :username, to: :user

  has_many :ratings
  has_many :likes, -> { like }, class_name: 'Rating'
  has_many :hates, -> { hate }, class_name: 'Rating'

  validates :title, :description, presence: true

  default_scope { sorted_by(:created_at) }
  scope :sorted_by, ->(field) { reorder(field => :desc) }

  def ratings_count
    likes_count + hates_count
  end

  def update_counter_caches!
    update(likes_count: likes.count, hates_count: hates.count)
  end
end
