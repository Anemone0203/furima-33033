class ApplicationController < ActionController::Base
  before_action :configure_parmitted_parameters, if: :devise_controller?

   private
   def configure_parmitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_name, :last_name, :first_name_kana, :last_name_kana, :birth])
   end
  end
