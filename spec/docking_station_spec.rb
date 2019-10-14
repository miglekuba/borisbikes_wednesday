require 'docking_station'
describe DockingStation do
    it "should respond to release the bike" do
#arange
dock = DockingStation.new
#assert
expect(dock).to respond_to(:release_bike)
    end
it "releases working bikes" do
#arrange
dock = DockingStation.new
#act
bike = dock.release_bike
expect(bike).to be_working
end
end