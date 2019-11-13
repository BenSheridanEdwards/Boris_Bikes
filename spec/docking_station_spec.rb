require 'docking_station'

describe DockingStation do 

it "Should create an instance, docking_station when Class.new is called." do 
    docking_station = DockingStation.new 
    expect (docking_station).to be_instance_of DockingStation
end

it "Create an instance of Bike when release_bike is called on docking_station" do 
    expect (docking_station.release_bike).to be_instance_of Bike
end

end