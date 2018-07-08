class User::RatingsController < User::BaseController
  before_action :set_movie
  before_action :require_not_own_movie

  def create
    current_user.movie_ratings(@movie).first_or_initialize.update(score: params[:score])

    respond_to do |format|
      format.html { redirect_to :back, notice: 'Rating posted' }
      format.js { render :ratings }
    end
  end

  def destroy
    current_user.movie_rating(@movie).destroy

    respond_to do |format|
      format.html { redirect_to :back, notice: 'Rating deleted' }
      format.js { render :ratings }
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def require_not_own_movie
    if @movie.user == current_user
      render nothing: true, status: :forbidden
    end
  end
end
