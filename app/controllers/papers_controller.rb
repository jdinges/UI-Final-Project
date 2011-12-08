class PapersController < ApplicationController
  before_filter :login_required, :except => [:show]
  before_filter :find_paper, :except => [:index]

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
      #format.html { redirect_to edit_user_path(@paper.user), :notice => "Successfully created paper." }
	    render :json => @paper
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
    #redirect_to edit_user_path(@paper.user), :notice => "Successfully destroyed paper."
	render :text => 'destroyed'
  end
  
  private
    
    def find_paper
      @paper = Paper.find(params[:id])
    end
end
