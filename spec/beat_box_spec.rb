require './lib/beat_box'
require './lib/linked_list'
require './lib/node'
require './lib/greenlist'

RSpec.describe BeatBox do
  describe '#initialize' do
    it 'is an instance of BeatBox' do
      bb = BeatBox.new

      expect(bb).to be_an_instance_of(BeatBox)
    end

    it 'starts with an empty Linked List' do
      bb = BeatBox.new

      expect(bb.list).to be_an_instance_of(LinkedList)
      expect(bb.list.head).to eq(nil)
    end

    it 'can take an argument and create a head' do
      bb = BeatBox.new("deep")
      expect(bb.all).to eq ("deep")
    end 
  end

  describe '#append' do
    it 'can add multiple nodes from one string' do
      bb = BeatBox.new
      bb.append("deep doo dit")

      expect(bb.list.head.data).to eq("deep")
      expect(bb.list.head.next_node.data).to eq("doo")
    end

    it 'can only add sounds from greenlist' do
      bb = BeatBox.new("deep")
      bb.append("Mississippi")
      expect(bb.all).to eq("deep")

      bb.prepend("tee tee tee Mississippi")
      expect(bb.all).to eq("tee tee tee deep")
    end
  end

  describe '#prepend' do
    it 'can add multiple nodes from one string to the beginning of a linked list' do
      bb = BeatBox.new
      bb.append("deep doo dit")
      bb.prepend("woo hoo shu")

      expect(bb.all).to eq ("woo hoo shu deep doo dit")
    end
  end

  describe '#count' do
    it 'can count nodes in linked list' do
      bb = BeatBox.new
      bb.append("deep doo dit")
      bb.append("woo hoo shu")

      expect(bb.count).to eq(6)
    end
  end

  describe '#play' do
    it 'can play sounds from linked list' do
      bb = BeatBox.new
      bb.append("deep doo ditt woo hoo shu")
      expect(bb.count).to eq(6)
      expect(bb.list.count).to eq(6)

      expect(bb.play).to eq('')
    end
  end

  describe '#all' do
    it 'can list all sounds in beat box linked list' do
      bb = BeatBox.new
      bb.append("deep doo dit")
      bb.append("woo hoo shu")

      expect(bb.all).to eq("deep doo dit woo hoo shu")
    end
  end

  describe '#rate and #reset_rate' do
    it 'can change the speed at which sounds are played' do
      bb = BeatBox.new("deep dop dop deep")
      bb.play
      bb.rate = 100

      expect(bb.play).to eq("")
    end

    it 'can reset the rate to the default' do
      bb = BeatBox.new("deep dop dop deep")
      bb.rate = 100
      bb.play
      bb.reset_rate

      expect(bb.play).to eq("")
    end
  end

  describe '#voice and #reset_voice' do
    it 'can change the Voice in which sounds are played' do
      bb = BeatBox.new("deep dop dop deep")
      bb.play
      bb.voice = "Daniel"

      expect(bb.play).to eq("")
    end

    it 'can reset the voice to the default' do
      bb = BeatBox.new("deep dop dop deep")
      bb.voice = 'Daniel'
      bb.play
      bb.reset_voice

      expect(bb.play).to eq("")
    end
  end
end