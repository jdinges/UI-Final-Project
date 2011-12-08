class EducationsController < ApplicationController
  before_filter :login_required, :except => [:show]
  before_filter :find_education, :only => [:show, :edit, :update, :destroy]
  
  def index
    @educations = Education.all
  end

  def show
  end

  def new
    @education = Education.new
  end

  def create
    @education = Education.new(params[:education])
    @education.user = current_user
    if @education.save
      respond_to do |format|
        format.html { redirect_to user_path(current_user), :notice => "Successfully created education." }
        format.js 
      end
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    @education = Education.find(params[:id])
    if @education.update_attributes(params[:education])
      redirect_to @education.user, :notice  => "Successfully updated education."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @education.destroy
  end
  
  protected
  
    def find_education
      @education = Education.find(params[:id])
    end
end
