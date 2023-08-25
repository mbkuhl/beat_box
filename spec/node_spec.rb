require './lib/node'

RSpec.describe Node do
  describe '#initialize' do
    it 'is an instance of node' do
      node = Node.new("plop")

      expect(node).to be_an_instance_of(Node)
    end

    it 'can hold data that is passed in' do
      node = Node.new("plop")

      expect(node.data).to eq("plop")
    end

    it 'has a position for the next node that is empty' do
      node = Node.new("plop")

      expect(node.next_node).to eq(nil)
    end
  end
end





