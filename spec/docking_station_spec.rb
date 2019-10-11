require 'docking_station'
describe DockingStation do

    it "return it to respond to release_bike" do
        expect (subject).to respond_to(:release_bike) #subject is equal to DockingStation.new
end
end

