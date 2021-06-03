Quando('faço uma requisição com o verbo GET no recurso films') do
    @request_films = swapi.get_films
end

Então('o status code deve ser {int}') do |status_code|
    expect(@request_films.code).to eq(status_code)
end

Então('deve retonar uma lista com os filmes do Star Wars') do
    expect(@request_films['results'][0]['title']).to eq("A New Hope")
    expect(@request_films['results'][1]['title']).to eq("The Empire Strikes Back")
    expect(@request_films['results'][2]['title']).to eq("Return of the Jedi")
    expect(@request_films['results'][3]['title']).to eq("The Phantom Menace")
    expect(@request_films['results'][4]['title']).to eq("Attack of the Clones")
    expect(@request_films['results'][5]['title']).to eq("Revenge of the Sith")
end