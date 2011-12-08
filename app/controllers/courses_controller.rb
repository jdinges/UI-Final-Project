class CoursesController < ApplicationController
  before_filter :login_required
  before_filter :find_course, :only => [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new(params[:course])
    @course.save
    render :action => 'create'
  end

  def create
    @course = Course.new(params[:course])
    @course.user = current_user
    if @course.save
      respond_to do |format|
        format.html { redirect_to user_path(current_user), :notice => "Successfully created course." }
        format.js 
      end
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @course.update_attributes(params[:course])
      redirect_to user_path(current_user), :notice => "Successfully updated course."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @course.destroy
    render :action => 'destroy'
  end
  
  private
  
    def find_course
      @course = Course.find(params[:id])
    end
end
