class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #ビューとコントローラの両方に必要なので明示的に実装
  include SessionsHelper
end
