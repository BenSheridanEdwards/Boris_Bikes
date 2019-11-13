require 'docking_station'
require 'bike'

describe DockingStation do 

    let(:bike) { Bike.new }

    #Release a bike
    it { is_expected.to respond_to :release_bike }

    # Check bike can be docked successfully
    it { is_expected.to respond_to(:dock_bike).with(1).argument }

end