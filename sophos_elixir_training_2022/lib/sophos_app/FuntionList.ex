defmodule SophosApp.FunctionList do

  def functionToElements(list) do
    functionTo(list,[])
  end

  defp functionTo([],list) do: list
  defp functionTo([h | t], list), do: functionTo(t, list ++ [h+1])

end
