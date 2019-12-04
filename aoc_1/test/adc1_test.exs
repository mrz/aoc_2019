defmodule Aoc1Test do
  use ExUnit.Case
  doctest Aoc1

  test "Calculates fuel requirements" do
    assert Aoc1.get_fuel_requirement(12) == 2
    assert Aoc1.get_fuel_requirement(14) == 2
    assert Aoc1.get_fuel_requirement(1969) == 654
    assert Aoc1.get_fuel_requirement(100756) == 33583
  end
end
