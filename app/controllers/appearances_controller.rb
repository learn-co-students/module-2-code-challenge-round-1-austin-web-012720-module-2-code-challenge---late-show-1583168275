class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end
  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
      redirect_to "/episodes/#{appearance_params[:episode_id]}"
    else
      render "new"
    end
  end


  private

  def appearance_params
    params.require(:appearance).permit(:guest_id,:episode_id,:rating)
  end

end
