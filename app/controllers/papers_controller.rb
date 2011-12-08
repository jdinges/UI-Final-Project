class PapersController < ApplicationController
  before_filter :login_required, :except => [:show]
  before_filter :find_paper, :only => [:show, :edit, :update, :destroy]

  def index
    @papers = Paper.all
  end

  def show
  end

  def new
    @paper = Paper.new
  end

  def create
    @paper = Paper.new(params[:paper])
    @paper.user = current_user
    if @paper.save
      respond_to do |format|
        format.html { redirect_to user_path(current_user), :notice => "Successfully created course." }
        format.js 
      end
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @paper.update_attributes(params[:paper])
      #redirect_to edit_user_path(@paper.user), :notice  => "Successfully updated paper." }
	    render :text => @paper.title
    else
      render :action => 'edit'
    end
  end

  def destroy
    @paper.destroy
  end
  
  private
    
    def find_paper
      @paper = Paper.find(params[:id])
    end
end
