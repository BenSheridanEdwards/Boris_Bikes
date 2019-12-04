require 'docking_station'

RSpec.describe 'DockingStation' do
  
  let(:station) { DockingStation.new }
  let(:bike) { double :bike }

  context 'when a user docks a working bike' do
    before(:each) do
      allow(bike).to receive(:working?).and_return true
    end

    it 'should be able to release the same working bike' do
      station.dock(bike)
      expect(station.release).to eq(bike)
    end
  end

  context 'when the docking station is full' do
    before(:each) do
      DockingStation::DEFAULT_CAPACITY.times { station.dock(double :bike, working: true) }
    end

    it 'should raise an error when a user tries to dock a bike' do
      message = 'Docking station full'
      expect { station.dock(bike) }.to raise_error message
    end
  end

  context 'when the docking station is empty' do

    it 'should raise an error telling the user there are no bikes available' do
      message = 'No bikes available'
      expect { station.release }.to raise_error message
    end
  end

  context 'when all bikes in the docking station are broken' do
    before(:each) do
      allow(bike).to receive(:working?).and_return false
      5.times { station.dock(bike) }
   end

    it 'should raise an error telling the user that all the bikes are broken' do
      message = 'All bikes broken'
      expect { station.release }.to raise_error message
    end
  end
end
