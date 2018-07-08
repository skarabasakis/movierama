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

  def score_count_label(movie, score)
    if movie.ratings.present?
      pluralize(movie.send("#{score}s_count"), score)
    else
      score.titleize
    end
  end

  def sort_link(label, field)
    if sort_param.to_s == field.to_s
      content_tag :strong, label, class: 'sort-link'
    else
      link_to label, url_for(sort: field), class: 'sort-link'
    end
  end
end
