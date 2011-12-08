class ResearchesController < ApplicationController
  before_filter :login_required, :except => [:show]
  before_filter :find_research, :only => [:show, :edit, :update, :destroy]
  def index
    @researches = Research.all
  end

  def show
    #@research = Research.find(params[:id])
  end

  def new
    @research = Research.new
  end

  def create
    @research = Research.new(params[:research])
    @research.user = current_user
    if @research.save
      respond_to do |format|
        format.html { redirect_to user_path(current_user), :notice => "Successfully created research." }
        format.js 
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @research = Research.find(params[:id])
  end

  def update
    @research = Research.find(params[:id])
    if @research.update_attributes(params[:research])
      redirect_to current_user, :notice  => "Successfully updated research."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @research = Research.find(params[:id])
    @research.destroy
  end
  
  private
    def find_research
      @research = Research.find(params[:id])
    end
end
