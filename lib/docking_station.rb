require_relative 'bike'

class DockingStation
    attr_reader :bikes

    def initialize
        @bikes = [Bike.new]
    end

    def release_bike
        if @bikes.length == 0
            raise "ERROR! no bikes available"
        else
            @bikes.pop
        end
    end
    
    def dock(bike)
        @bikes << bike
        return "The Bike is Docked"
    end

end
