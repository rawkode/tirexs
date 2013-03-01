defmodule Tirexs.Search do

  import Tirexs.Search.Helpers

  defmacro __using__(_) do
    quote do
      import unquote(Tirexs.Search)
      import unquote(Tirexs.Facets)
    end
  end

  defmacro search([do: block]) do
    [search: extract(block)]
  end

  def highlight([do: block]) do
    [highlight: block]
  end

  def sort([do: block]) do
    [sort: block]
  end

  def rescore([do: block]) do
    IO.puts inspect(block)
    [rescore: extract(block)]
  end
end