require "docking_station"

describe DockingStation do

  let(:station) { DockingStation.new }
  let(:bike) { Bike.new }

  describe '#initialize' do
      
    # If no capacity is set by the user, then the default capacity is set
    it 'uses a default capacity when no input is given' do
      expect(station.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end
  end

  describe '#dock' do

    # You're able to dock a working bike, then release the same bike
    it 'can dock and release a working bike' do
      station.dock(bike)
      bike = station.release
      expect(bike.working?).to eq(true)
    end

    # Raises error when full
    it 'raises an error when full' do
      station.capacity.times { station.dock(Bike.new) }
      expect { station.dock(Bike.new) }.to raise_error 'Docking station full'
    end
  end

  describe '#release_bike' do 

    # Docking Station can release a bike
    it 'releases a bike when one is available' do
      station.dock(bike)
      expect(station.release).to eq(bike)
    end

    # Raises an error when there are no bikes available
    it 'raises an error when there are no bikes available' do
      expect { station.release }.to raise_error 'No bikes available'
    end

    # Doesn't release a bike if none are working
    it 'does not release broken bikes' do
      bike.report_broken
      station.dock(bike)
      expect { station.release }.to raise_error 'All bikes broken'
    end
  end
end
