class AppearancesController < ApplicationController
  
  def index 
    @appearances = Appearance.all 
  end
  
  def show
    @appearance = Appearance.find(params[:id])
  end 

  def new
    @appearance = Appearance.new
  end

  def edit; end
  def create 
    @appearance = Appearance.new
    @appearance.save
    redirect_to guest_path(@guest_id)
  end
  def update; end 
  def destroy; end
end
