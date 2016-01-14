class HomeController < ApplicationController
    def index
        @excursion_count = Excursion.count
        @time_count = 0 #Excursion.sum(:time)
        @distance_count = Excursion.sum(:distance)
    end
end
