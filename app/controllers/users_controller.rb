class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_movies = @user.movies.sorted_by(sort_param)
  end
end
