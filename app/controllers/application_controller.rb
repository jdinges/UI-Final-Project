class ApplicationController < ActionController::Base
  include ControllerAuthentication
  protect_from_forgery
  
  helper :layout
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  
end
