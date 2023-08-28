require './lib/greenlist'

RSpec.describe Greenlist do
  describe '#initialize' do
    it 'is an instance of greenlist' do
      greenlist = Greenlist.new

      expect(greenlist).to be_an_instance_of(Greenlist)
    end

    it 'has a starter greenlist when created' do
      greenlist = Greenlist.new

      expect(greenlist.sounds).to eq(["tee", "dee", "deep", "bop", "boop", "la", "na"])
    end
  end

  describe '#add_sounds' do
    it 'can add new sounds to greenlist' do
      greenlist = Greenlist.new
      greenlist.add_sounds("boom")

      expect(greenlist.sounds).to eq(["tee", "dee", "deep", "bop", "boop", "la", "na", "boom"])
    end

    it 'can add multiple sounds to greenlist' do
      greenlist = Greenlist.new
      greenlist.add_sounds("boom bam")

      expect(greenlist.sounds).to eq(["tee", "dee", "deep", "bop", "boop", "la", "na", "boom", "bam"])
    end
  end

  describe '#remove_sounds' do
    it 'can remove sounds from greenlist' do
      greenlist = Greenlist.new
      greenlist.remove_sounds("la")

      expect(greenlist.sounds).to eq(["tee", "dee", "deep", "bop", "boop", "na"])
    end

    it 'can remove multiple sounds from greenlist' do
      greenlist = Greenlist.new
      greenlist.add_sounds("dee la")

      expect(greenlist.sounds).to eq(["tee", "deep", "bop", "boop", "na"])
    end
  end
end