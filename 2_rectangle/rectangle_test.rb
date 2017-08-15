require 'minitest/autorun'
require_relative 'rectangle'

class RectangleTest < Minitest::Test
  def test_area
    assert_equal 15, Rectangle.new(5, 3).area
    assert_equal 400, Rectangle.new(200, 2).area
  end
end
