defmodule Aoc1Test do
  use ExUnit.Case
  doctest Aoc1

  test "Part 1" do
    assert Aoc1.get_fuel_requirement_plain(12) == 2
    assert Aoc1.get_fuel_requirement_plain(14) == 2
    assert Aoc1.get_fuel_requirement_plain(1969) == 654
    assert Aoc1.get_fuel_requirement_plain(100756) == 33583
  end

  test "Part 2" do
    assert Aoc1.get_fuel_requirement_complete(14) == 2
    assert Aoc1.get_fuel_requirement_complete(1969) == 966
    assert Aoc1.get_fuel_requirement_complete(100756) == 50346
  end

end
