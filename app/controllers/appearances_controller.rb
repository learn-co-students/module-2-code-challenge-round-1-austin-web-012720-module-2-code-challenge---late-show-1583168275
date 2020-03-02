class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    @episode = Episode.find(appearance_params[:episode_id])
    @appearance.save
    redirect_to episode_path(@episode)
  end

  private

  def appearance_params
    params.require(:appearance).permit(:id, :rating, :episode_id, :guest_id)
  end

end

