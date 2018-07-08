class Movie < ApplicationRecord
  belongs_to :user
  validates :title, :description, presence: true

  default_scope { sorted_by(:created_at) }
  scope :sorted_by, ->(field) { reorder(field => :desc) }
end
