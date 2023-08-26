class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
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
    beats = self.list.to_string
    `say -r 500 -v Boing #{beats}`
  end
end