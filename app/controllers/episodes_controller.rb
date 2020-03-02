class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episodes = Episode.find(parmas[:id])
  end

  def new
    @episodes = Episode.new
  end

end
