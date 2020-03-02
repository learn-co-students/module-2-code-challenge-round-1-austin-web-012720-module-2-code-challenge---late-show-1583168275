class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
      episode = appearance_params(:episode_id)
      redirect_to episode_path(episode)
    else
      @errors = @appearance.errors.full_messages
      render :new
  end


  private 

  def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
