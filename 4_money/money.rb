class Money

  attr_reader :amount, :currency
  protected :amount, :currency

  DECIMAL_PRECISION = 2

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


end
