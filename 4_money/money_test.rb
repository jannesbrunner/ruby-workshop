require "minitest/autorun"

class MoneyTest < Minitest::Test
  def test_equality
    
    assert_equal Money.new(5, "EUR") == Money.new(5, "EUR")
  end
  

end
