defmodule Aoc1 do
  defp calculate_fuel_requirement(mass) do
    (mass / 3)
    |> Float.floor()
    |> Kernel.-(2)
  end

  def read_file_contents() do
    Path.join(:code.priv_dir(:aoc_1), "input")
    |> File.read()
    |> (fn {:ok, contents} -> String.split(contents, "\n", trim: true) end).()
    |> Enum.map(&Integer.parse/1)
  end

  def get_fuel_requirement_plain(mass) do
    calculate_fuel_requirement(mass)
  end

  def get_fuel_requirement_complete(mass) when mass >= 0 do
    calculate_fuel_requirement(mass)
    |> (fn fuel -> fuel + get_fuel_requirement_complete(fuel) end).()
    |> max(0)
  end

  def get_fuel_requirement_complete(mass) do
    0
  end
end
