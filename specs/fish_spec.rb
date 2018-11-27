
require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class FishTest < MiniTest::Test

  def setup()

    @fish = Fish.new("Sammy")

  end

  def test_fish_has_name()
    assert_equal("Sammy", @fish.name)
  end






end
