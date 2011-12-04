class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create, :index, :show, :splash, :learn]
  before_filter :find_user, :only => [:edit, :update]

  def new
    @user = User.new
  end
  
  def splash
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
    respond_to do |format|
      format.html
      format.xml { render :xml => @users }
    end
  end
  
  def show
    @user = User.find_by_username(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice => "Your profile has been updated."
    else
      render :action => 'edit'
    end
  end
  
  private

    def find_user
      @user = current_user
    end
end
