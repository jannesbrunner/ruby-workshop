require "minitest/autorun"
require_relative "money"

class MoneyTest < Minitest::Test
  def test_equality
    assert_equal Money.new(5,"EUR"), Money.new(5, "EUR")
    refute_equal Money.new(5,"EUR"), Money.new(4, "EUR")
    refute_equal Money.new(5,"EUR"), Money.new(5, "USD")
    refute_equal Money.new(5,"USD"), Money.new(4, "EUR")
    assert_equal Money.new(99.99,"EUR"), Money.new(99.99, "EUR")
    refute_equal Money.new(5, "EUR"), nil
  end


  

end
