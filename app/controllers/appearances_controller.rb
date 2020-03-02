class AppearancesController < ApplicationController

    before_action :set_appearance, only: [:show]

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if !@appearance.guests.empty? || !@appearance.episodes.empty?
            Appearance.create(appearance_params)
        else
            render 'new'
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_ids, :episode_ids, :numeric_rating)
    end

    def set_appearance
        @appearance = Appearance.find(params[:id])
    end

end

