defmodule VersionNotFound do
  def process(list) do
    for entry <- list, reduce: {:ok, nil} do
      {:ok, _} ->
        do_something(entry)

      {:error, _} = error ->
        error
    end
  end

  defp do_something(%{path: path} = _entry) when is_binary(path) do
    IO.puts("there's a path: #{path}")
    {:ok, path}
  end

  defp do_something(_), do: {:error, :path_not_available_in_entry}
end
