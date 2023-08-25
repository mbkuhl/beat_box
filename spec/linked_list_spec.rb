require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  describe '#initialize' do
    it 'is an instance of linkedlist' do
      list = LinkedList.new

      expect(list).to be_an_instance_of(LinkedList)
    end

    it 'has no head when first instantiated' do
      list = LinkedList.new

      expect(list.head).to eq(nil)
    end
  end

  describe '#append' do
    it 'can add a head through the append method' do
      list = LinkedList.new

      expect(list.head).to eq(nil)
      list.append("doop")

      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
    end

    it 'can add more nodes beyond the head' do
      list = LinkedList.new

      expect(list.head).to eq(nil)
      list.append("doop")

      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)

      list.append('deep')
      expect(list.head.next_node.data).to eq("deep")
      expect(list.head.next_node.next_node).to eq(nil)
    end
  end

  describe '#count' do
    it 'can count the number of nodes in the linked list up to head' do
      list = LinkedList.new

      expect(list.count).to eq(0)
      list.append("doop")

      expect(list.count).to eq(1)
    end

    it 'can count the number of nodes in the linked list beyond head' do
      list = LinkedList.new

      expect(list.count).to eq(0)
      list.append("doop")

      expect(list.count).to eq(1)
      list.append('deep')

      expect(list.count).to eq(2)
    end
  end

  describe '#to_string' do
    it 'can turn data in head into one string' do
      list = LinkedList.new

      expect(list.to_string).to eq(nil)
      list.append("doop")

      expect(list.to_string).to eq("doop")
    end

    it 'can turn the data in all nodes sequentially into one string' do
      list = LinkedList.new

      expect(list.to_string).to eq(nil)
      list.append("doop")
      expect(list.to_string).to eq("doop")
      list.append("deep")
      expect(list.to_string).to eq("doop deep")
    end
  end

  describe '#prepend' do
    it 'can insert a node into the head position' do
      list = LinkedList.new

      list.append("plop")
      expect(list.to_string).to eq("plop")
      list.append("suu")
      expect(list.to_string).to eq("plop suu")
      list.prepend("dop")

      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq(3)
    end
  end

  describe '#insert()' do
    it 'can insert data at a specific index position' do
      list = LinkedList.new

      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      expect(list.count).to eq(3)
      list.insert(1, "woo")
      expect(list.to_string).to eq("dop woo plop suu")
    end
  end
end





