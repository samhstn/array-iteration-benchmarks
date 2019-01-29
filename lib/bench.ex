defmodule Mix.Tasks.Bench do
  use Mix.Task

  defp count_duplicates(strings) when is_list(strings) do
    length(strings) - length(Enum.uniq(strings))
  end

  def run(_cmds) do
    strings = File.read!("strings.json") |> Jason.decode!
    start_time = DateTime.utc_now() |> DateTime.to_unix(:millisecond)

    duplicate_count = count_duplicates(strings)

    end_time = DateTime.utc_now() |> DateTime.to_unix(:millisecond)

    IO.puts("Elixir")
    IO.puts("Number of duplicates: #{duplicate_count}")
    IO.puts("Execution time #{end_time - start_time}ms")
  end
end
