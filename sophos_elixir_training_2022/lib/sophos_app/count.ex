defmodule SophosApp.Count do
  def length(list) do
    countElements(list,0)
  end

  defp countElements([],n), do: n
  defp countElements([_h|t],n), do: countElements(t, n+1)
end
