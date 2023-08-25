require './lib/node'

class LinkedList
  attr_reader :head
  def initialize
    @head = nil
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
      string = @head.data
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
        string.insert(-1, " ").insert(-1, current_node.data)
      end
      string
    end
  end

end