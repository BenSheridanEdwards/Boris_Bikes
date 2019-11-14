require "docking_station"
require "bike"

describe DockingStation do 

  let(:bike) { Bike.new }

  it "Returns docked bikes" do
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  # Docking Station can release a bike
  it { is_expected.to respond_to :release_bike }

  # Bike can be docked
  it { is_expected.to respond_to(:dock).with(1).argument }

  # Release a working bike 
  #it 'releases a working bike' do
  #  bike = subject.release_bike
  #  expect(bike.working?).to eq(true)
  #end

  # Dock a bike then release the same bike
  it 'Allows a user to dock a bike, then release the same bike' do
    subject.dock(bike)
    expect(subject.release_bike).to eq(bike)
end
=begin

  describe '#release_bike' do 
  
    it "Should remove a bike from the dock and return it to the user" do
      expect {subject.release_bike}.to eq (bike)
    end

    it "Raises an error when the dock is empty" do 
      expect {subject.release_bike}.to raise_error("No bikes available, please come back later.")
    end

  end

=end

=begin

  describe '#dock_bike' do 

    it "Stores a bike in the dock" do 
      allow(bike).to receive(:working?)
      expect(subject.dock_bike(bike)).to eq [bike]
    end

    it "Raises an error when the dock is full" do
      DockingStation::Max_Capacity.times { subject.dock_bike(bike) }
      expect {subject.dock_bike(bike)}.to raise_error("Full Dock, please come back later")
    end 

    it "Raises an error when all the bikes are broken" do 
      expect {bike.working? == false}.to raise_error("Your bike is broken! Take it to the garage.")
    end
  end
=end
end