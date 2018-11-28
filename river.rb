
class River

  attr_reader :name, :fish
  attr_writer :fish

  def initialize(name, fish = [ ])
    @name = name
    @fish = fish
  end

  def fish_count()
    return @fish.length
  end

  def bear_takes_fish(fish)
    @fish.delete(fish)
  end

end
