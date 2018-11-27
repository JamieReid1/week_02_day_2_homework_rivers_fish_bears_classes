
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

  def eat_fish(fish)
    @stomach << fish
  end

end
