class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
 
  def new
    @guest = Guest.new
  end

  def create
  end

  def show
    @guest = Guest.find(params[:id])
  end


end
