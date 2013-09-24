require "test/unit"

class MyFirstTest < Test::Unit::TestCase


  def test_1
    assert_equal 1, 1, "Nay"
    r = Robot.new
  end

end
