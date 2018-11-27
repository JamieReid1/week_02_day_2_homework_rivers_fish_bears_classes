
class Bear

  attr_reader :name, :type, :stomach
  attr_writer :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = [ ]
  end

  def stomach_contents()
    return @stomach.length
  end

  def eat_fish(fish, river)
    for a_fish in river.fish
      if a_fish == fish
        @stomach << a_fish
        river.fish.delete(a_fish)
      end
    end
  end
  

end
