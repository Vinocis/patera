defmodule NumbersTest do
  use ExUnit.Case

  describe "decimal_to_roman/1" do
    test "converts a decimal number to their respective roman numeral" do
      assert Numerals.decimal_to_roman(23) == "XXIII"
      assert Numerals.decimal_to_roman(42) == "XLII"
      assert Numerals.decimal_to_roman(54) == "LIV"
      assert Numerals.decimal_to_roman(9) == "IX"
      assert Numerals.decimal_to_roman(4) == "IV"
    end
  end
end
