$LOAD_PATH.unshift File.expand_path("joke_fetcher/lib", __dir__)

require "joke_fetcher"

JokeFetcher::Joke.random
