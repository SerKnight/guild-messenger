class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    notify_of_activity(resource.email)
  end

  def after_sign_up_path_for(resource)
    notify_of_activity(resource.email)
  end

  def notify_of_activity(email)
    ApplicationMailer.notify_of_usage(email).deliver_now
    classrooms_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
