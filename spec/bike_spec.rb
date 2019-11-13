require 'bike'

describe Bike do

    let(:bike) {Bike.new}

#Test: To see if our Bike instance responds to method working?
    it {is_expected.to respond_to :working?}

# Test: Return true if the bike is working.
    it "Should return true if the bike is working" do 
        expect(bike.working?).to be_truthy
    end

end 
