defmodule Kinship do
  def put(majesties) do
    majesties
    |> majesties_with_index()
    |> List.flatten()
    |> kinship_with_roman_numerals()
  end

  defp majesties_with_index(majesties) do
    majesties
    |> Enum.with_index(1)
    |> Enum.group_by(fn {majesty, _index} -> majesty end)
    |> Enum.map(fn {_majesty, list} -> 
      Enum.with_index(list, fn element, index -> 
        Tuple.append(element, index + 1) 
      end)
    end)
  end

  defp kinship_with_roman_numerals(majesties) do
    majesties
    |> Enum.sort_by(fn {_majesty, index, _kinship} -> index end)
    |> Enum.reduce([], fn 
      {majesty, _index, kinship}, acc -> [{majesty, kinship} | acc] 
    end)
    |> Enum.reduce([], fn 
      majesty, acc -> [ format_majesty_name(majesty) | acc] 
    end)
  end

  defp format_majesty_name({majesty, kinship}) do
    "#{majesty} #{Numerals.decimal_to_roman(kinship)}"
  end
end
