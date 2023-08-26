require './lib/node'

class LinkedList
  attr_reader :head, :test
  def initialize
    @head = nil
    @test = nil
  end

  def append(data)
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
    @test = @head
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
    if @head == nil
      @head = Node.new(data)
    else
      node = Node.new(data)
      node.next_node = @head
      @head = node
    end
  end

  def insert(index, data)
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