class Greenlist
  attr_reader :sounds
  def initialize
    @sounds = ["tee", "dee", "deep", "bop", "boop", "la", "na",]
  end

  def add_sounds(sounds)
    sounds_array = sounds.split(" ")
    @sounds += sounds_array
  end

  def remove_sounds (sounds)
    sounds_array = sounds.split(" ")
    sounds_array.each do |sound|
      if @sounds.include?(sound)
        @sounds.delete(sound)
      end
    end
  end
end