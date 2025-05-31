require "httparty"

module JokeFetcher
  class Joke
    def self.random
      response = HTTParty.get("https://official-joke-api.appspot.com/random_joke")
      if response.code == 200
        joke = response.parsed_response
        puts "#{joke['setup']} - #{joke['punchline']}"
      else
        puts "Failed to fetch joke."
      end
    end
  end
end
