class BeatBox
  attr_reader :list
  attr_writer :rate
  attr_writer :voice
  def initialize(head = nil)
    @list = LinkedList.new
    if head != nil
      self.append(head)
    end
    @rate = 500
    @voice = "Boing"
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
    `say -r #{@rate.to_s} -v #{@voice} #{beats}`
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

  def reset_rate
    @rate = 500
  end

  def reset_voice
    voice = "Boing"
  end

end