#language:pt

@films
Funcionalidade: Films
    Sendo um QA 
    Quero fazer requisições GET no recurso films da API SWAPI
    Para validar o seu comportamento

    @title
    Cenario: Validar o status code e a propriedade title
        Quando faço uma requisição com o verbo GET no recurso films
        Então o status code deve ser 200
        E deve retonar uma lista com os filmes do Star Wars

    