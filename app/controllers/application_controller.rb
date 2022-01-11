class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    # 全てのコントローラーを実行する前にauthenticate_user!を読み込みます。
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
      end

end
