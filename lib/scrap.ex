defmodule Scrap do
  @moduledoc """
  Documentation for `Scrap`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Scrap.hello()
      :world

  """
  def get_page do

    case HTTPoison.get("https://mangalivre.net/") do
      {:ok, %HTTPoison.Response{body: body}} ->
        document = Floki.parse(body)
        content = document
        elem = Floki.find(content, "div#populares-semana")
        ancoras = Floki.find(elem, "a")

        IO.puts(ancoras)


      #IO.inspect(content)

    end
  end
end
