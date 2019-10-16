require_relative 'bike'

class DockingStation
    attr_reader :bikes, :max_capacity

    def initialize
        @bikes = [Bike.new]
        @max_capacity = 20
        
    end

    def release_bike
        if @bikes.length == 0
            raise "ERROR! no bikes available"
        else
            @bikes.pop
        end
    end
    
    def dock(bike)
        if @bikes.length == @max_capacity
            raise "No available space to dock your bike"
        else
        @bikes << bike
        return "The Bike is Docked"
        end
    end

end
