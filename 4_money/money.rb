class Money

  attr_reader :amount, :currency
  protected :amount, :currency

  DECIMAL_PRECISION = 2

  class << self
    attr_reader :base_currency, :conversion_rates
  end

  def self.set_conversion_rate(base_currency, conversion_rates)
    @base_currency = base_currency
    @conversion_rates = conversion_rates
  end

  def initialize(amount, currency)
    @amount = amount.round(DECIMAL_PRECISION)
    @currency = currency
  end

  def ==(other)
    return false unless other.kind_of?(self.class)
    amount == other.amount && currency == other.currency
  end

  def inspect
    "#{amount} #{currency}"
  end

  def convert_to(target_currency)
    Money.new((amount_in_base_currency * conversion_rate(target_currency)), target_currency)
  end

  private

  def amount_in_base_currency
    amount * (1.0 / conversion_rate(currency))
  end

  def conversion_rate(target_currency)
    return 1.0 if target_currency == self.class.base_currency
    self.class.conversion_rates.fetch(target_currency)
  end
end




