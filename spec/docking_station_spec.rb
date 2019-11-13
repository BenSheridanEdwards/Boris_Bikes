require 'docking_station'
require 'bike'

describe DockingStation do 

  let(:bike) { Bike.new }


    

    #Release a bike
    it { is_expected.to respond_to :release_bike }

    # Check bike can be docked successfully
    it { is_expected.to respond_to(:dock_bike).with(1).argument }


    # Check our bike is passed into the dock
    it "Stores a bike in the dock" do 
        allow(bike).to receive(:working?)
        expect(subject.dock_bike(bike)).to eq [bike]
    end

  describe '#dock_bike' do 

   it "Raises an error when the dock is full" do
    expect {full? == true}.to raise_error("Full Dock, please come back later")
   end 

   it "Raises an error when all the bikes are broken" do 
    expect {bike.working? == false}.to raise_error("Your bike is broken! Take it to the garage.")
   end

  describe '#release_bike' do 

  it "Raises an error when the dock is empty"

end

