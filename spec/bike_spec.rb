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

  describe '#report_broken' do

    it "should change a bike's working? feedback to false" do
        expect(bike.working?).to be_truthy
        bike.report_broken
        expect(bike.working?)to be_falsey
    end

  end

  describe '#broken?' do

    it "Should return true when the bike has been reported as broken" do 
        bike.report_broken
        expect(bike.broken?).to be_truthy
    end

  end 

end 
