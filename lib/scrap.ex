defmodule Scrap do

  def pegar_tokens do

  end

  def get_page do

    case HTTPoison.get("https://mangalivre.net/lista-de-mangas/ordenar-por-numero-de-leituras/todos/desde-o-comeco") do
      {:ok, %HTTPoison.Response{body: body}} ->
        document = Floki.parse_document(body)
        content = body
        elem = Floki.find(body, "div.seriesList")
        list = Floki.find(elem, "li")
        title = Floki.find(list, "span.series-title")
        header = Floki.find(title, "h1")


        text = Floki.raw_html(header)



        IO.inspect(text)


    end
  end
end
