require "minitest/autorun"
require_relative "money"

class MoneyTest < Minitest::Test

  def setup
    Money.set_conversion_rate("EUR",
                              "USD" => 1.11,
                              "SEK" => 10)
  end


  def test_equality
    assert_equal Money.new(5,"EUR"), Money.new(5, "EUR")
    assert_equal Money.new(99.99,"EUR"), Money.new(99.99, "EUR")
    assert_equal Money.new(0.019,"EUR"), Money.new(0.02, "EUR")

    refute_equal Money.new(5,"USD"), Money.new(4, "EUR")
    refute_equal Money.new(5,"EUR"), Money.new(4, "EUR")
    refute_equal Money.new(5,"EUR"), Money.new(5, "USD")
    refute_equal Money.new(5,"EUR"), nil
    refute_equal Money.new(5,"EUR"), Object.new
  end

  def test_conversions
    assert_equal Money.new(5, "EUR"), Money.new(5, "EUR").convert_to("EUR")
    assert_equal Money.new(5.55, "USD"), Money.new(5, "EUR").convert_to("USD")
    assert_equal Money.new(5, "EUR"), Money.new(5.55, "USD").convert_to("EUR")
    assert_equal Money.new(50, "SEK"), Money.new(5, "EUR").convert_to("SEK")
    assert_equal Money.new(5.55, "USD"), Money.new(50, "SEK").convert_to("USD")
  end


  

end
