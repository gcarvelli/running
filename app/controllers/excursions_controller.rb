class ExcursionsController < ApplicationController

    def index
    end

    def new
    end

    def create
        time = (params[:time]).split(':')
        @excursion = Excursion.new(excursion_params)
        @excursion.date = Date.today
        @excursion.minutes = time[0]
        @excursion.seconds = time[1]
        @excursion.save

        redirect_to root_path
    end

    private
        def excursion_params
            params.require(:excursion).permit(:distance, :calories)
        end
end
