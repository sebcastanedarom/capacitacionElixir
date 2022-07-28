defmodule SophosApp.FizzBuzz do
  def exec(n) do
    alias SophosApp.MyList, as: ML
    ML.generate(n)
    |> fizzBuzz()
  end

  defp fizzBuzz(list) do
    fizzBuzz(list,[])
  end

  defp fizzBuzz([],list), do: list
  defp fizzBuzz([h|t],list) when rem(h,3) == 0 and rem(h,5) == 0, do: fizzBuzz(t,list++[:FizzBuzz])
  defp fizzBuzz([h|t],list) when rem(h,3) == 0, do: fizzBuzz(t,list++[:Fizz])
  defp fizzBuzz([h|t],list) when rem(h,5) == 0, do: fizzBuzz(t,list++[:Buzz])
  defp fizzBuzz([h|t],list), do: fizzBuzz(t,list++[h])
end
