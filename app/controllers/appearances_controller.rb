class AppearancesController < ApplicationController
    def index
        
    end
    
      def new
        @appearance = Appearance.new
      end
    
      def create
        @appearance = Appearance.new(app_params)
        redirect_to appearance_path(@appearance)
      end

      def show
        @appearance = Appearance.find(params[:id])
        
      end

      private

      def app_params
        params.require(:appearance).permit(:episode_id, :guest_id)
      end
end
