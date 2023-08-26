require './lib/beat_box'
require './lib/linked_list'
require './lib/node'

RSpec.describe BeatBox do
  describe '#initialize' do
    it 'is an instance of BeatBox' do
      bb = BeatBox.new

      expect(bb).to be_an_instance_of(BeatBox)
    end

    xit 'starts with an empty Linked List' do
      bb = BeatBox.new

      expect(bb.list).to be_an_instance_of(LinkedList)
      expect(bb.list.head).to eq(nil)
    end
  end

  describe '#append' do
    xit 'can add multiple nodes from one string' do
      bb = BeatBox.new
      bb.append("deep doo dit")

      expect(bb.head.data).to eq("deep")
      expect(bb.head.next_node.data).to eq("doo")
    end
  end

  describe '#count' do
    xit 'can count nodes in linked list' do
      bb = BeatBox.new
      bb.append("deep doo dit")
      bb.append("woo hoo shu")

      expect(bb.count).to eq(6)
    end
  end



