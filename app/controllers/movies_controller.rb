class MoviesController < ApplicationController
  def index
    @movies = Movie.all.includes(:user)
  end
end
