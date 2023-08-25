require './lib/node'

class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    end
  end

  def count
    if @head != nil
      1
    else
      0
    end
  end

  def to_string
    if @head != nil
      @head.data
    end
  end

end