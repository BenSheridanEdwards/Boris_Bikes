require "docking_station"
require "bike"

describe DockingStation do 

  let(:bike) { Bike.new }
  let(:bike1) { Bike.new }

  #You're able to dock a working bike, then release the same bike. 
  it 'can dock and release a working bike' do
    expect(bike.working).to eq(true)
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq(bike)
    expect(bike.working?).to eq(true)
  end

  describe 'initialization' do 
      
    # If no capacity is set by the user, then the default capacity is set
    it 'uses a default capacity when no input is given' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end
    
  end

  describe '#dock' do 

    #Bike can be docked
    it { is_expected.to respond_to(:dock_bike).with(1).argument }

    #Raises error when full
    it 'raises an error when full' do
      subject.capacity.times { subject.dock_bike(Bike.new) }
      expect { subject.dock_bike(Bike.new) }.to raise_error 'Docking station full'
    end
  end

  describe '#release_bike' do 

    #Docking Station can release a bike
    it { is_expected.to respond_to :release_bike }

    #Raises an error when there are no bikes available
    it "raises an error when there are no bikes available" do 
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end

  end

end