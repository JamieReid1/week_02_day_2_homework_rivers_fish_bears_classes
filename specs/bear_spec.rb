
require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class BearTest < MiniTest::Test

  def setup

    @bear = Bear.new("Bruce", "smart")

    @fish1 = Fish.new("Sam")
    @fish2 = Fish.new("Sally")
    @fish3 = Fish.new("Terry")
    @fish4 = Fish.new("Tash")
    @fish5 = Fish.new("Mike")
    @fish6 = Fish.new("Molly")

    @fish_arr = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]
    @river = River.new("Isla", @fish_arr)

  end

  def test_bear_has_name()
    assert_equal("Bruce", @bear.name)
  end

  def test_bear_has_a_type()
    assert_equal("smart", @bear.type)
  end

  def test_stomach_contents()
    assert_equal(0, @bear.stomach.length)
  end

  def test_bear_can_take_fish_from_river()
    @bear.eat_fish(@fish1, @river)
    assert_equal(1, @bear.stomach.length)
    assert_equal(5, @river.fish.length)
  end


end
