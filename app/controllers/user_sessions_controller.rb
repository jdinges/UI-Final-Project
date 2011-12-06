class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      #rails is being bitchy, and 'users_path(current_user)'
      #is evaluating to '/user.<username>' instead of
      #'/user/username'
      #why.jpg
      redirect_to "/members/users/#{current_user.username}", :notice => "Logged in successfully."
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to root_url, :notice => "You have been logged out."
  end
end
