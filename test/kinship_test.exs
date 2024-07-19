defmodule KinshipTest do
  use ExUnit.Case

  describe "put/1" do
    test "put kinship degree on a list of majesties" do
      majesties = Kinship.put(
        ["Fulano", "Ciclano", "Beltrano", "Ciclano"]
      )

      assert Enum.at(majesties, 0) == "Fulano I"
      assert Enum.at(majesties, 1) == "Ciclano I"
      assert Enum.at(majesties, 2) == "Beltrano I"
      assert Enum.at(majesties, 3) == "Ciclano II"
    end

    test "put kinship degree on a list of majesties regardless of length" do
      majesties = 
        ["Fulano", "Ciclano", "Beltrano"]
        |> Stream.cycle()
        |> Enum.take(300)
        |> Kinship.put()
        |> Enum.chunk_every(3)

      assert Enum.at(majesties, 9) == ["Fulano X", "Ciclano X", "Beltrano X"]
      assert Enum.at(majesties, 49) == ["Fulano L", "Ciclano L", "Beltrano L"]
      assert Enum.at(majesties, 99) == ["Fulano C", "Ciclano C", "Beltrano C"]
    end
  end
end
