class AppearancesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
      @episode = Episode.find(@appearance.episode_id)
      redirect_to episode_path(@episode)
    else
      render "new"
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end
