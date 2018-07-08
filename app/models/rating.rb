class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  enum score: { like: 1, hate: -1 }

  after_commit do
    movie.update_counter_caches!
  end
end
