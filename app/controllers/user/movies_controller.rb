class User::MoviesController < User::BaseController
  def new
    @movie = current_user.movies.new
  end

  def create
    @movie = current_user.movies.new(movie_params)

    if @movie.save
      redirect_to root_path, notice: 'Movie created'
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description)
  end
end
