class UsersController < ApplicationController
  before_filter :login_required, :only => [:edit, :update]
  before_filter :find_user, :only => [:edit, :update]
  respond_to :html

  def new
    @user = User.new
  end
  
  def splash
    respond_with current_user if logged_in?
  end
  
  def learn
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to edit_members_user_path(@user), :notice => "Thank you for signing up! Now it's time to create your persona."
    else
      render :action => 'new'
    end
  end
  
  def index
    @users = User.where(:published => true).paginate(:page => params[:page])
  end
  
  def show
    @user = User.find_by_username(params[:id])
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice => "Your profile has been updated."
    else
      render :action => 'edit'
    end
  end
  
  private

  def find_user
    @user = current_user
  end
end
