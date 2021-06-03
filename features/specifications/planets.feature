#language: pt

@planets
Funcionalidade: Planets
    Sendo um QA 
    Quero fazer requisições GET no recurso planets da API SWAPI
    Para validar o seu comportamento

    @code404
    Cenario: Validar status code passando um count inexistente
        Quando faço uma requisição com o verbo GET no recurso planets
        E passo um count inexistente
        Então deve retornar o status 404