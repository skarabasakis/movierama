class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in,        keys: [:username, :password])
    devise_parameter_sanitizer.permit(:sign_up,        keys: [:username, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found
    respond_to do |format|
      format.html { render file: "#{Rails.root}/public/404.html", status: :not_found, layout: false }
      format.any { head :not_found }
    end
  end
end
