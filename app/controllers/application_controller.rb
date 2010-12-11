class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :signin?
  helper_method :current_user
  
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def signin?
    unless current_user
      redirect_to :signin
    end
  end
end
