class Adapter
  API_BASE = 	'http://api.icndb.com/jokes/random'
  def initialize
    joke_request = RestClient.get(API_BASE,
    headers={'Accept' => 'application/json', 'Content-Type': 'applicatin/json'})
    data = JSON.parse(joke_request )
    Joke.create(joke: data["value"]["joke"])

  end
end
