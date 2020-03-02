class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  
  def show
    @guests = Guest.find.(parmas[:id])
  end

  def new
    @guests = Guest.new
  end
  
  def create
    @guest = Guest.new(guest_parmas[:name], occupation[:occupation])
  end

  private

  def guests_parmas
    params.require(:guest).permit(:name, :occupation)
  end

end
