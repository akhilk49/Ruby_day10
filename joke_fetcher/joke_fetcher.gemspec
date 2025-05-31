# frozen_string_literal: true

require_relative "lib/joke_fetcher/version"

Gem::Specification.new do |spec|
  spec.name          = "joke_fetcher"
  spec.version       = JokeFetcher::VERSION
  spec.authors       = ["akhilk49"]
  spec.email         = ["akhilkkurian49@gmail.com"]

  spec.summary       = "Fetches a random programming joke."
  spec.description   = "A simple Ruby gem that fetches random jokes using the official-joke-api."
  spec.homepage      = "https://github.com/akhilk49/joke_fetcher"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
end
