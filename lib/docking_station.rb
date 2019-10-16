require_relative 'bike'

class DockingStation
    attr_reader :bikes, :max_capacity

    def initialize
        @bikes = [Bike.new]
        @max_capacity = 20
        
    end

    def release_bike
        if empty?
            raise "ERROR! no bikes available"
        else
            @bikes.pop
        end
    end
    
    def dock(bike)
        if full?
            raise "No available space to dock your bike"
        else
        @bikes << bike
        return "The Bike is Docked"
        end
    end

    private def empty? 
        @bikes.length == 0
    end

    private def full?
        @bikes.length == @max_capacity
    end
end
