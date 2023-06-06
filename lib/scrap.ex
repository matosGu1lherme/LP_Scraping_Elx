defmodule Scrap do


  def pegar_tokens(string, rank \\ 1) do

    [head | tail] = string

    manga_link = "https://mangalivre.net" <> head

    case HTTPoison.get(manga_link) do
      {:ok, %HTTPoison.Response{body: body}} ->
        content = body
        head = Floki.find(content, "head")
        tile_element = Floki.find(head ,"title")
        title = Floki.text(tile_element)

        IO.puts("\n")
        string_title = "##{rank}: #{title}"
        IO.inspect(string_title)

        desc_element = Floki.find(head, "meta[name='description']")
        desc = Floki.attribute(desc_element, "content")
        descricao = Floki.text(desc)
        string_desc = "Descricao: #{descricao}"
        IO.inspect(string_desc)

        body = Floki.find(content, "div.series-info")
        span = Floki.find(body, "span.series-author")

        dado = Enum.at(span, 1)
        list_span = Tuple.to_list(dado)
        IO.inspect(Enum.at(list_span, 2))

        IO.puts("\n")


    end


  end

  def get_page do

    case HTTPoison.get("https://mangalivre.net/lista-de-mangas/ordenar-por-numero-de-leituras/todos/desde-o-comeco") do
      {:ok, %HTTPoison.Response{body: body}} ->

        div = Floki.find(body, "div.seriesList")
        ul = Floki.find(div, "ul.seriesList")
        anchor = Floki.find(ul, "a.link-block")
        links = Floki.attribute(anchor, "href")


        pegar_tokens(links)

    end
  end
end
