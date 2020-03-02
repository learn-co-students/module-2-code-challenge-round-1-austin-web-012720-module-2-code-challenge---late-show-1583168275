class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new

  end

  def create

    @appearance = Appearance.create(appearance_params)
    # byebug
    episode = Episode.find(appearance_params[:episode_id])
    
    redirect_to episode_path(episode)
  end

  private

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end

end
