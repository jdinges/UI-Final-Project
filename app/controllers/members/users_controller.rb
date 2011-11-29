class Members::UsersController < ApplicationController
  before_filter :login_required
  before_filter :find_user, :only => [:edit, :update]
  before_filter :styles, :only => [:edit, :update]

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
      format.json { render :json => @users }
    end
  end
  
  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
      format.json { render :json => @user }
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
	  
	  if params[:inline].eql? "true" 
	    if @user.update_attributes(params[:user])
		  render :text => @user.bio
	    end
	  else
	    respond_to do |format|
	      if @user.update_attributes(params[:user])
	        format.html { redirect_to members_user_path(@user), :notice => "Your profile has been updated." }
	        format.js
	      else
	        format.html { render :action => 'edit' }
	        format.js
	      end
	    end
	  end
  end
  
  private

    def find_user
      @user = current_user
    end
    
    def styles
      @styles = Styles.all
    end
end
