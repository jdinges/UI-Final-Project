class Members::UsersController < ApplicationController
  before_filter :login_required
  before_filter :find_user, :only => [:edit, :update]
  before_filter :load_roles, :only => [:new, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Thank you for signing up! You are now logged in."
    else
      render :action => 'new'
    end
  end
  
  USERS_PER_PAGE = 20
  
  def index
    @users = User.paginate(:page => params[:page], :per_page => USERS_PER_PAGE)
    respond_to do |format|
      format.html
      format.xml { render :xml => @users }
    end
  end
  
  def show
    @user = User.find(params[:id])
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

    def load_roles
      @roles = Role.all
    end
end
