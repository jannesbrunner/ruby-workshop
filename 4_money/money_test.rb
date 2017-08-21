require "minitest/autorun"
require_relative "money"

class MoneyTest < Minitest::Test
  def test_equality
    
    assert_equal Money.new(5, "EUR") == Money.new(5, "EUR")
  end
  

end
