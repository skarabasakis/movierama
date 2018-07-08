class MoviesController < ApplicationController
  def index
    @movies = Movie.sorted_by(sort_param).includes(:user)
  end
end
