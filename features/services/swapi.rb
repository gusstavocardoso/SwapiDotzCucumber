module Rest
    class Swapi
        include HTTParty

        format :json
        base_uri CONFIG['base_uri']

        def get_films
            self.class.get('/films')
        end

        def get_planets
            self.class.get('/planets')
        end

        def get_planets_err(count)
            self.class.get("/planets/#{count}")
        end
    end
end