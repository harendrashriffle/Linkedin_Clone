class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :update_sanitized_params, if: :devise_controller?
  before_action do
    ActiveStorage::Current.url_options = { protocol: request.protocol, host: request.host, port: request.port }
  end

  before_action :authenticate_user!


  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :mobile, :address])
    end

    def update_sanitized_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :mobile, :address, :encrypted_password])
    end
end
