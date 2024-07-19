defmodule Patera do
  def main(_args \\ []) do
    IO.puts("Insira apenas um nome por linha.")
    IO.puts("Caso queira finalizar a lista, insira uma linha em branco.")

    []
    |> get_majesties()
    |> Enum.reverse()
    |> Kinship.put()
    |> Enum.each(&IO.puts/1)
  end

  defp get_majesties(acc) do
    ""
    |> IO.gets()
    |> String.trim()
    |> String.capitalize()
    |> get_majesties(acc)
  end

  defp get_majesties(majesty, acc) when byte_size(majesty) > 0 do
    get_majesties([majesty | acc])
  end

  defp get_majesties(_majesty, acc) do
    acc
  end
end
