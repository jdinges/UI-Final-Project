class AccomplishmentsController < ApplicationController
  def index
    @accomplishments = Accomplishment.all
  end

  def show
    @accomplishment = Accomplishment.find(params[:id])
  end

  def new
    @accomplishment = Accomplishment.new
  end

  def create
    @accomplishment = Accomplishment.new(params[:accomplishment])
    if @accomplishment.save
      redirect_to @accomplishment, :notice => "Successfully created accomplishment."
    else
      render :action => 'new'
    end
  end

  def edit
    @accomplishment = Accomplishment.find(params[:id])
  end

  def update
    @accomplishment = Accomplishment.find(params[:id])
    if @accomplishment.update_attributes(params[:accomplishment])
      redirect_to @accomplishment, :notice  => "Successfully updated accomplishment."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @accomplishment = Accomplishment.find(params[:id])
    @accomplishment.destroy
    redirect_to accomplishments_url, :notice => "Successfully destroyed accomplishment."
  end
end
