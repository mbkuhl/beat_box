require './lib/node'

class LinkedList
  attr_reader :head, :count
  def initialize
    @head = nil
    @current_node = nil
    @end_node = nil
    @count = 0
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
      @count += 1
      @current_node = @head
    else
      @current_node.next_node = Node.new(data)
      @count += 1
      @current_node = @current_node.next_node
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