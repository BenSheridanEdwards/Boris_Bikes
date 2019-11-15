require "docking_station"
require "bike"

describe DockingStation do 

  let(:bike) { Bike.new }

  #You're able to dock a working bike, then release the same bike. 
  it 'can dock and release a working bike' do
    subject.dock(bike)
    bike = subject.release
    expect(bike.working?).to eq(true)
  end

  describe '#initialize' do 
      
    # If no capacity is set by the user, then the default capacity is set
    it 'uses a default capacity when no input is given' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

  end

  describe '#dock' do 

    #Bike can be docked
    it { is_expected.to respond_to(:dock).with(1).argument }

    it "should add a bike to the docking station" do 
      expect(subject.dock(bike)).to eq (subject.bike_dock)
    end

    #Raises error when full
    it 'raises an error when full' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
    end
  end

  describe '#release_bike' do 

    #Docking Station can release a bike
    it "Releases a bike when one is available" do
      subject.dock(bike)
      expect(subject.release).to eq(bike)
    end

    #Raises an error when there are no bikes available
    it "raises an error when there are no bikes available" do 
      bike = Bike.new
      expect {subject.release}.to raise_error 'No bikes available'
    end

    # Doesn't release a bike if none are working
    it 'does not release broken bikes' do
      bike.report_broken
      subject.dock(bike)
      expect {subject.release}.to raise_error 'All bikes broken'
    end

  end

end