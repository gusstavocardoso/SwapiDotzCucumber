Quando('faço uma requisição com o verbo GET no recurso planets') do
    @request_planet = swapi.get_planets
    @count = @request_planet['count']
    @to_add = @count+1
end

Quando('passo um count inexistente') do
    @request_err = swapi.get_planets_err(@to_add)
end

Então('deve retornar o status {int}') do |code_err|
    expect(@request_err.code).to eq(code_err)
end
