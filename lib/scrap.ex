defmodule Scrap do

  def pegar_tokens(string) do

    result = String.split(string, "</h1>")

    [head | _tail] = result

    IO.inspect(head)



  end

  def get_page do

    case HTTPoison.get("https://mangalivre.net/lista-de-mangas/ordenar-por-numero-de-leituras/todos/desde-o-comeco") do
      {:ok, %HTTPoison.Response{body: body}} ->

        elem = Floki.find(body, "div.seriesList")
        list = Floki.find(elem, "li")
        title = Floki.find(list, "span.series-title")
        header = Floki.find(title, "h1")

        text = Floki.raw_html(header)

        str = to_string(text)

        pegar_tokens(str)

    end
  end
end
