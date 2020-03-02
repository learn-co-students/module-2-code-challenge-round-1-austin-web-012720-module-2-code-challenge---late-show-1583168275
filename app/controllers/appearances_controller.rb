class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    byebug
  end

  private 

  def appearances_params
    params.require(:appearances).permit(:guest_id, :episode_id, :rating, guests_attributes: [:id, :name, :occupation], episodes_attributes: [:id, :date, :number])
  end
end

# <%= f.label :episode_id %>
# <%=  %>