defmodule Mix.Tasks.FirstPart do

  def run(_) do
    Aoc1.read_file_contents()
    |> Enum.reduce(0, fn {n, _}, acc -> Aoc1.get_fuel_requirement_plain(n) + acc end)
    |> Kernel.trunc()
    |> IO.puts
  end

end
