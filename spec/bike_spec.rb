require 'bike'

describe Bike do

    let(:bike) {Bike.new}

  #To see if our Bike instance responds to method working?
  it {is_expected.to respond_to :working?}

  describe '#working?' do

    #Return true if the bike is working.
    it "Should return true if the bike is working" do 
      expect(bike.working?).to be_truthy
    end

  end

  describe '#broken?' do

    it "Should return true when the bike has been reported as broken" do 
        subject.report_broken
        expect(subject.broken?).to be_truthy
    end

  end 

end 
