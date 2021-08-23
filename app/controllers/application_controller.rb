class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, address_attributes: [:country, :state, :city, :area, :postal_code]])
    # user_params.permit({ roles: [] }, :email, :password, :password_confirmation) -->checkboxes


    # devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    #   user_params.permit(:username, :email)
    # end

  end

end
