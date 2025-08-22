class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :address, :mobile_no])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :address, :mobile_no])
  end
end