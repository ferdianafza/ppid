class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  protected
  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:nama_lengkap, :ktp, :telepon, :alamat, :pekerjaan ])
   devise_parameter_sanitizer.permit(:sign_in, keys: [:nama_lengkap, :ktp, :telepon, :alamat, :pekerjaan ])
   devise_parameter_sanitizer.permit(:account_update, keys: [:nama_lengkap, :ktp, :telepon, :alamat, :pekerjaan ])
  end
end
