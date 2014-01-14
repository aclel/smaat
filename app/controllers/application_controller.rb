class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
  			devise_parameter_sanitizer.for(:sign_up) << :first_name
  			devise_parameter_sanitizer.for(:sign_up) << :last_name
  			devise_parameter_sanitizer.for(:sign_up) << :form
  			devise_parameter_sanitizer.for(:sign_up) << :monday
  			devise_parameter_sanitizer.for(:sign_up) << :tuesday
  			devise_parameter_sanitizer.for(:sign_up) << :wednesday
  			devise_parameter_sanitizer.for(:sign_up) << :thursday
  			devise_parameter_sanitizer.for(:sign_up) << :friday
  			devise_parameter_sanitizer.for(:sign_up) << :parent_name
  			devise_parameter_sanitizer.for(:sign_up) << :email
  			devise_parameter_sanitizer.for(:sign_up) << :contact
  			devise_parameter_sanitizer.for(:sign_up) << :reports
		end
end
