class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:acc, :name, :msg, :email])
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:acc)
    end
  end
end
