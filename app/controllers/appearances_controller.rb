class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new
        # @appearance = Appearance.find(params[:id])
        @appearance.update(appearance_params)
        if @appearance.valid?
            @appearance.save
        else
            render 'new'
        end
        redirect_to episode_path(@appearance.episode)
    end


    private

    def appearance_params
        params.require(:appearance).permit(guests_attributes: [:name, :id], episdoes_attributes: [:number, :id])
    end

end
