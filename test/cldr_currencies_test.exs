defmodule Cldr.Currency.Test do
  use ExUnit.Case

  doctest Cldr.Currency
  doctest Test.Cldr.Currency

  test "that we can confirm known currencies" do
    assert Cldr.Currency.known_currency?("USD") == true
  end

  test "that we reject unknown currencies" do
    assert Cldr.Currency.known_currency?("ABCD") == false
  end
end
