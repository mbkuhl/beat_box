class BeatBox
  attr_reader :list
  def initialize(head = nil)
    @list = LinkedList.new
    if head != nil
      @list.append(head)
    end
  end

  def append(string)
    sound_array = string.split(" ")
    sound_array.each do |sound|
      @list.append(sound)
    end
  end

  def count
    @list.count
  end

  def play
    beats = list.to_string
    `say -r 500 -v Boing #{beats}`
  end

  def all
    @list.to_string
  end

  def prepend(string)
    sound_array = string.split(" ").reverse
    sound_array.each do |sound|
      @list.prepend(sound)
    end
  end

end