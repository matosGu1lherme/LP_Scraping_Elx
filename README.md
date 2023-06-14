# Implementação do Trabalho de Linguagens de Programação

## Sobre o Programa

O programa é feito em Elixir, e realiza uma varredura em três sites de mangás, para
conseguir a lista de mangas mais lidos do momento, os sites escolhidos são MangaLivre,
MangaChan, LerManga

- **Para executar o programa**

1. Instalar o Elixir
2. executar o comando "mix deps.get" dentro da pasta LP_SCRAPING_ELX
3. Rodar o Comando "iex -S mix"
4. Dentro do terminal iterativo do iex, executar o comando "Scrap.main", que ira iniciar o função principal
5. Escolher um dos tres sites de manga e digitar como aparece no terminal seu nome
  - sites MangaLivre e MangaChan devolvem as saidas no Terminal
  - Site LerMangas retorna os dados em um arquivo "Em_alta.txt", que é criado ao executar a função.

## WebScraping em Sites de Manga

O trabalho requerido pelo professor Rodrigo Hubner tinha como objetivo a realização de um trabalho que realizasse WebScraping, ou seja, a busca de dados em páginas web por meio de requisições HTTP e técnicas de filtragem de dados. No entanto, o trabalho necessitava ser realizado por meio de linguagens funcionais.

- Itens necessários:

1. A linguagem precisava garantir o **paralelismo** proporcionado por linguagens funcionais. Com isso em mente, variáveis globais e qualquer outro tipo de dado que impedisse esse paralelismo das linguagens foram excluídos do projeto, a fim de manter as boas práticas da linguagem.

2. Laços de repetição, como while e for, também foram deixados de lado, uma vez que linguagens funcionais **evitam laços de repetição** para manter a **imutabilidade e transparência referencial**. Esses conceitos se complementam, uma vez que, ao buscar manter a imutabilidade, tendemos a abandonar as variáveis, que trazem inconsistências e resultados imprecisos. Já a transparência referencial diz que uma função, dadas as mesmas parâmetros, deve retornar os mesmos resultados todas as vezes em que for executada. Por esse motivo, laços de repetições que necessitam de variáveis para seu funcionamento rompem com esses dois conceitos.

3. Funções de alta ordem são ferramentas essenciais para programar com linguagens funcionais. Elas permitem a passagem de outras funções como parâmetros de funções, condenando a atribuição de funções a parâmetros.

4. Avaliação preguiçosa: linguagens funcionais permitem a criação e execução de funções de acordo com a necessidade de geração de dados. É possível realizar a busca em um site de livros por todos os títulos de livros presentes na página ou rodar a função de acordo com a necessidade e salvar o estado dela, voltando a executá-la conforme a necessidade da aplicação.

# Conclusão

Linguagens funcionais, por meio de todos os aspectos citados acima, conseguem manter funcionalidades muito atrativas para a comunidade. A retirada de variáveis e laços de repetições que causam instabilidade e dependências entre os componentes do programa permite que o programa seja altamente otimizável, uma vez que se torna possível o paralelismo entre essas partes. Além disso, como citado em outros pontos, tais modificações propostas constroem um código confiável e estável para a utilização.
