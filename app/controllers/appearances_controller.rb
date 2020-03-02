class AppearancesController < ApplicationController
  def new
    @app = Appearance.new
  end

  def create
    @app = Appearance.create(app_params)
    @app.save
    redirect_to episode_path(@app)
  end

  private

  def app_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end
