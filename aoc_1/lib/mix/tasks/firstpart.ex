defmodule Mix.Tasks.FirstPart do

  def run(_) do
    Aoc1.sum_fuel_requirements()
    |> IO.puts
  end

end
