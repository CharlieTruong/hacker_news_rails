class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def current_user
    # you need to use a ivar here to cache the value for the duration of the request
    # @user ||= ...
    user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
