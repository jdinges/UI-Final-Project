class ProfessorsController < ApplicationController
  def index
    @professors = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])
  end

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.new(params[:professor])
    if @professor.save
      redirect_to @professor, :notice => "Successfully created professor."
    else
      render :action => 'new'
    end
  end

  def edit
    @professor = Professor.find(params[:id])
  end

  def update
    @professor = Professor.find(params[:id])
    if @professor.update_attributes(params[:professor])
      redirect_to @professor, :notice  => "Successfully updated professor."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @professor = Professor.find(params[:id])
    @professor.destroy
    redirect_to professors_url, :notice => "Successfully destroyed professor."
  end
end
