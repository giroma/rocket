require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  def setup
    @rocket = Rocket.new
  end
  def test_name_saves
    result = @rocket.name=('ari')

    expected = @rocket.name
    assert_equal(expected, result)
  end
  def test_color_saves
    result = @rocket.name=('ari')

    expected = @rocket.name
    assert_equal(expected, result)
  end
  def test_lift_off_true_when_not_flying
    result = @rocket.lift_off
    result_variable = @rocket.flying?
    expected = true
    assert_equal(expected, result)
    assert_equal(expected, result_variable)
  end
  def test_land_false_when_not_flying
    result = @rocket.land

    expected = false
    assert_equal(expected, result)
  end
  def test_name_color_generated
    result = @rocket.name.class
    result_color = @rocket.colour.class

    expected = String
    assert_equal(expected, result)
    assert_equal(expected, result_color)

  end
end
