# ruby-workshop / Money

This is a little representation of money and currency conversion operations made with OOP, TDD and ruby. 
You can create a new money object with a value and a currency. You can also convert from one currency to another one.
For each currency, you can set a conversion rate. Convert back to origin currency is mathematically implemented. (Unless you set your own rate.)
The tests are focused on equality and conversion. 

In your favourite shell, type
`ruby money_test.rb` to run the tests.

## Creating 'money'

`Money.new(5,"EUR")`

## Convert to another currency

`Money.new(5, "EUR").convert_to("USD")`

## Set a conversion rate

`Money.set_conversion_rate("EUR",
                              "USD" => 1.11,
                              "SEK" => 10)`

