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

end