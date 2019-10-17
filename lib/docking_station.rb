require_relative 'bike'

class DockingStation
    attr_reader :bikes, :max_capacity

    DEFAULT_CAPACITY = 20

    def initialize (max_capacity = DEFAULT_CAPACITY)
        @bikes = [Bike.new]
        @max_capacity = max_capacity
        
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

    private 
    
    def empty? 
        @bikes.length == 0
    end

     def full?
        @bikes.length == @max_capacity
    end
end
