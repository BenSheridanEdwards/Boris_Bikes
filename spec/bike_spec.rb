

require 'docking_station'

describe Bike do 

it "Should return true when .working? is called on a bike instance" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect (bike.working?).to be true
end

end

