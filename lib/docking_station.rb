require_relative 'bike'

class DockingStation
    attr_reader :bikes

    def initialize
        @bikes = [Bike.new]
    end

    def release_bike
        Bike.new
    end
    
    def dock(bike)
        @bikes << bike

    end

end
