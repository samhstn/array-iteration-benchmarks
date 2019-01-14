defmodule Mix.Tasks.Bench do
  use Mix.Task

  defp countDuplicates(strings) when is_list(strings) do
    strings
    |> Enum.with_index()
    |> Enum.reduce(0, fn {str, i}, count ->
      if Enum.find_index(strings, &(&1 == str)) == i do
        count
      else
        count + 1
      end
    end)
  end

  def run(_cmds) do
    strings = File.read!("strings.json") |> Jason.decode!

    start_time = DateTime.utc_now() |> DateTime.to_unix(:millisecond)

    duplicateCount = countDuplicates(strings)

    end_time = DateTime.utc_now() |> DateTime.to_unix(:millisecond)

    IO.puts("Elixir")
    IO.puts("Number of duplicates: #{duplicateCount}");
    IO.puts("Execution time #{end_time - start_time}ms");
  end
end
