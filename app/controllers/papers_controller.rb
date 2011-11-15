class PapersController < ApplicationController
  def index
    @papers = Paper.all
  end

  def show
    @paper = Paper.find(params[:id])
  end

  def new
    @paper = Paper.new
  end

  def create
    @paper = Paper.new(params[:paper])
    if @paper.save
      redirect_to @paper, :notice => "Successfully created paper."
    else
      render :action => 'new'
    end
  end

  def edit
    @paper = Paper.find(params[:id])
  end

  def update
    @paper = Paper.find(params[:id])
    if @paper.update_attributes(params[:paper])
      redirect_to @paper, :notice  => "Successfully updated paper."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @paper = Paper.find(params[:id])
    @paper.destroy
    redirect_to papers_url, :notice => "Successfully destroyed paper."
  end
end
