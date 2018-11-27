
require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class BearTest < MiniTest::Test

  def setup

    @bear = Bear.new("Bruce", "smart")

  end

  def test_bear_has_name()
    assert_equal("Bruce", @bear.name)
  end

  def test_bear_has_a_type()
    assert_equal("smart", @bear.type)
  end





end
