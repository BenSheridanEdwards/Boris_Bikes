require 'bike'

describe Bike do

  describe '#working?' do

    #Return true if the bike is working.
    it "Should return true if the bike is working" do 
      expect(subject.working?).to be_truthy
    end

  end

  describe '#broken?' do

    it "Should return true when the bike has been reported as broken" do 
        subject.report_broken
        expect(subject.broken?).to be_truthy
    end

  end 

end 
