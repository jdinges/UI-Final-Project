class UsersController < ApplicationController
  before_filter :login_required, :only => [:edit, :update]
  before_filter :find_user, :only => [:edit, :update]

  def new
    @user = User.new
  end
  
  def splash
    if current_user #redirect to user's homepage
      @user = current_user
      render :show
    end
  end
  
  def learn
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, :notice => "Thank you for signing up! Now it's time to create your persona."
    else
      render :action => 'new'
    end
  end
  
  def index
    @users = User.where(:published => true).paginate(:page => params[:page])
  end
  
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      if params[:ajax]
        render :text => @user.bio 
      else
        redirect_to @user, :notice => "Your profile has been updated."
      end
    else
      render :action => 'edit'
    end
  end
  
  private

  def find_user
    @user = current_user
  end

  def current_user?
    current_user == @user
  end
end
