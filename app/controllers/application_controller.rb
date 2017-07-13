class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:avatar, :name, :surname, :id_number, :email, :password, :password_confirmation, :remember_me)}
		devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
		devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:avatar, :email, :password, :password_confirmation, :remember_me, :current_password)}
	end	

end
