class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  # Devise permitted params
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
      :username,
      :email,
      :password,
      :password_confirmation)
    }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(
      :username,
      :email,
      :password,
      :password_confirmation,
      :current_password
      )
    }
  end
end