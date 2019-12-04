defmodule Aoc1 do
  def get_fuel_requirement(mass) do
    mass/3
    |> Float.floor
    |> Kernel.-(2)
  end

  def sum_fuel_requirements do
    Path.join(:code.priv_dir(:aoc_1), "input")
    |> File.read
    |> (fn({:ok, contents }) -> String.split(contents, "\n", trim: true) end).()
    |> Enum.map(&Integer.parse/1)
    |> Enum.reduce( 0, fn {n, _}, acc -> get_fuel_requirement(n) + acc end)
    |> Kernel.trunc
  end

end
