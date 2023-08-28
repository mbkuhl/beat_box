require './lib/greenlist'

RSpec.describe Greenlist do
  describe '#initialize' do
    it 'is an instance of greenlist' do
      greenlist = Greenlist.new

      expect(greenlist).to be_an_instance_of(Greenlist)
    end

    it 'has a starter greenlist when created' do
      greenlist = Greenlist.new

      expect(greenlist.sounds).to eq(["tee", "dee", "deep", "bop", "boop", "la", "na",])
    end
  end
end