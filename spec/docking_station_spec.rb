require 'docking_station'
describe DockingStation do 
    it "should respond to the method release_bike" do
        docking_station = DockingStation.new
expect(docking_station).to respond_to(:release_bike)
    end
    it 'releases working bikes' do
        docking_station = DockingStation.new
        bike = docking_station.release_bike
expect(bike).to be_working
    end
#     it "should respond to dock bike" do
#         docking_station = DockingStation.new
#         dock = docking_station.dock
# expect(docking_station).to respond_to(:dock)
#     end
    it "should respond to dock bike with one argument" do
        dock = DockingStation.new
    expect(dock).to respond_to(:dock).with(1).argument
    end
    it "should dock a bike" do
        docking_station = DockingStation.new
        bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bikes.length).to eq 2
    end
    it "should tell if the bike is docked" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq "The Bike is Docked"
    end
    it "should raise an error if there are no available bikes" do
    docking_station = DockingStation.new
    expect {
        3.times do docking_station.release_bike 
        end
    }.raise_error("ERROR! no bikes available")
    end
end
