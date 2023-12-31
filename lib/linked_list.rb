require './lib/node'
require './lib/greenlist'

class LinkedList
  @@greenlist = Greenlist.new
  attr_reader :head, :test
  def initialize
    @head = nil
  end

  def append(data)
    if @@greenlist.sounds.include?(data)
      if @head == nil
        @head = Node.new(data)
      else
        current_node = @head
        until current_node.next_node == nil
          current_node = current_node.next_node
        end
        current_node.next_node = Node.new(data)
      end
    end
  end

  def greenlist_add(sounds)
    @@greenlist.add_sounds(sounds)
  end

  def greenlist_remove(sounds)
    @@greenlist.remove_sounds(sounds)
  end

  def count
    if @head == nil
      0
    else
      current_node = @head
      count = 1
      until current_node.next_node == nil
        count += 1
        current_node = current_node.next_node
      end
      count
    end
  end

  def to_string
    if @head == nil
      nil
    else
      string = "".insert(0 , @head.data)
      # string = @head.data
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
        string.insert(-1, " ").insert(-1, current_node.data)
      end

      string
    end
  end

  def prepend(data)
    if @@greenlist.sounds.include?(data)
      if @head == nil
        @head = Node.new(data)
      else
        node = Node.new(data)
        node.next_node = @head
        @head = node
      end
    end
  end

  def insert(index, data)
    if @@greenlist.sounds.include?(data)
      if index == 0
        prepend(data)
      else
        current_node = @head
        current_index = 0
        until current_index == (index-1)
          current_node = current_node.next_node
          current_index += 1
        end
        node = Node.new(data)
        node.next_node = current_node.next_node
        current_node.next_node = node
      end
    end
  end

  def node_recorder(start, nodes)
    string = '' 
    string += start.data
    (nodes-1).times do
      start = start.next_node
      string += " #{start.data}"
    end
    string
  end

  def find(index, nodes)
    if index == 0
      string = node_recorder(@head, nodes)
    else
      current_node = @head
      current_index = 0
      until current_index == index
        current_node = current_node.next_node
        current_index +=1
      end
      string = node_recorder(current_node, nodes)
    end
  end

  def includes?(string)
    include = false
    current_node = @head
    until current_node.next_node == nil
      if current_node.data == string
        include = true
        break
      end
      current_node = current_node.next_node
    end 
    include
  end

  def pop
    if count != 0
      if @head.next_node == nil
        data = @head.data
        @head = nil
        data
      else
        current_node = @head
        until current_node.next_node.next_node == nil
          current_node = current_node.next_node
        end
        data = current_node.next_node.data
        current_node.next_node = nil
        data
      end
    end
  end
end