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

  def logged_in?
    true if current_user
  end

  def current_user?
    current_user == @user
  end

  def login_required
    unless current_user
      redirect_to new_user_session_url, :notice => "You must be logged in to access this page"
      return false
    end
  end

  def require_no_user
    if current_user
      flash[:notice] = 
      redirect_to account_url, :notice => "You must be logged out to access this page"
      return false
    end
  end  
end
