class HomeController < ApplicationController
    def index
        @excursion_count = Excursion.count
        @time_count = get_total_time
        @distance_count = Excursion.sum(:distance)
    end

private
    def get_total_time
        minutes = Excursion.sum(:minutes)
        seconds = Excursion.sum(:seconds)

        minutes += seconds / 60
        seconds = seconds % 60

        hours = minutes / 60
        minutes = minutes % 60

        return hours.to_s \
            + ':' + minutes.to_s.rjust(2, '0') \
            + ':' + seconds.to_s.rjust(2, '0')
    end
end
