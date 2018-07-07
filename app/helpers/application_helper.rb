module ApplicationHelper
  def div_for(strings, options = {})
    if strings.present?
      [*strings].map { |string| content_tag :div, string, options }.join.html_safe
    end
  end
end
