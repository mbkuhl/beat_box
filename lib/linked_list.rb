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
    if @head == nil
      nil
    else
      @test = @head
      string = @head.data
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
      @test = @head
      node = Node.new(data)
      node.next_node = @head
      @head = node
    end
  end

end