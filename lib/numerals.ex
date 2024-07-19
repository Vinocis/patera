defmodule Numerals do
  @roman_to_decimal_mapping [
    M: 1000,
    CM: 900,
    D: 500,
    CD: 400,
    C: 100,
    XC: 90,
    L: 50,
    XL: 40,
    X: 10,
    IX: 9,
    V: 5,
    IV: 4,
    I: 1
  ]

  def decimal_to_roman(number) do
    decimal_to_roman([], number, @roman_to_decimal_mapping)
  end

  defp decimal_to_roman(
    roman_acc, 
    number, 
    [{roman_numeral, decimal_value}| _tail] = roman_to_decimal_mappings
  ) when number >= decimal_value do
    decimal_to_roman([roman_numeral | roman_acc], number - decimal_value, roman_to_decimal_mappings)
  end

  defp decimal_to_roman(roman_acc, number, [_head | remaining_mappings]) do
    decimal_to_roman(roman_acc, number, remaining_mappings)
  end

  defp decimal_to_roman(roman_acc, _number, [] = _remaining_mappings) do
    roman_acc
      |> Enum.reverse
      |> Enum.map_join("", &to_string/1)
  end
end
