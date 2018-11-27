require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup

    @river = River.new("Isla")

  end

  def test_river_has_name()
    assert_equal("Isla", @river.name)
  end





end
