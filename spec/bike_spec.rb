require 'bike'

describe Bike do

  let(:bike) { Bike.new }

  describe '#working?' do

    # Give feedback on whether a bike is working
    it 'should return true if the bike is working' do
      expect(bike.working?).to be_truthy
    end

  end

  context 'when a bike has been reported as broken' do
     
    # Reporting a bike as broken should change calling .broken? from false to true
    it 'should return true when the bike has been reported as broken' do
      expect(bike.broken?).to be_falsey
      bike.report_broken
      expect(bike.broken?).to be_truthy
    end

    # Reporting a bike as broken should change calling .working? from true to false
    it 'should change the attribute of a bike from working to not working' do
      expect(bike.working?).to be_truthy
      bike.report_broken
      expect(bike.working?).to be_falsey
    end
  end
end
