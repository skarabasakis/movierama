module ApplicationHelper
  def div_for(strings, options = {})
    if strings.present?
      [*strings].map { |string| content_tag :div, string, options }.join.html_safe
    end
  end

  def movie_user_link(movie)
    if movie.user.present?
      link_to movie_username(movie), user_path(movie.user_id)
    else
      content_tag :em, 'Unknown'
    end
  end

  def movie_username(movie)
    if movie.user == current_user
      content_tag :strong, 'You'
    else
      movie.username
    end
  end
end
