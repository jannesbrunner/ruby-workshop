class Money

  attr_reader :amount, :currency
  protected :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    return false if other.nil?
    amount == other.amount && currency == other.currency
  end



  def inspect
    "#{amount} #{currency}"
  end


end
