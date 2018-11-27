
require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Sam")
    @fish2 = Fish.new("Sally")
    @fish3 = Fish.new("Terry")
    @fish4 = Fish.new("Tash")
    @fish5 = Fish.new("Mike")
    @fish6 = Fish.new("Molly")

    @fish_arr = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]
    @river = River.new("Isla", @fish_arr)

  end

  def test_river_has_name()
    assert_equal("Isla", @river.name)
  end

  def test_river_has_fish()
    assert_equal(6, @river.fish.length)
  end

  def test_bear_takes_fish()
    @river.bear_takes_fish(@fish1)
    assert_equal(5, @river.fish.length)
  end





end
