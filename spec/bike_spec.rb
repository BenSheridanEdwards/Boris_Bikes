require 'bike'

RSpec.describe 'Bike' do

  let(:bike) { Bike.new }

  context 'when a bike is working' do
    it "should return true when working? is called" do
      expect(bike.working?).to eq true
    end

    it 'should be able to be reported as broken, and return false when working? is called' do
      bike.report_broken
      expect(bike.working?).to eq false
    end
  end

  context 'when a bike is broken' do
    before(:each) do
      bike.report_broken
    end

    it 'should return true when broken? is called' do
      expect(bike.broken?).to eq true
    end

    it 'should return false when working? is called' do
      expect(bike.working?).to eq false
    end
  end
end
