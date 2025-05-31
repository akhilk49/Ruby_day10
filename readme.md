# Ruby_day10

#  JokeFetcher Gem

**JokeFetcher** is a simple Ruby gem that fetches a random programming joke from the [official-joke-api](https://official-joke-api.appspot.com/random_joke). This gem was created as a learning project to understand how gems work, how to use third-party APIs in Ruby, and how to work with external libraries like `httparty`.

---

##  What It Does

- Makes a GET request to fetch a random joke.
- Uses the `httparty` gem to perform the API request.
- Wraps the logic inside a clean Ruby module and class.
- Can be tested locally without needing to publish the gem.

---

## 🛠️ Setup Instructions

### 1. Install the dependency

First, install the `httparty` gem if you haven’t already:

```bash
gem install httparty
````

---

### 2. Folder Structure

```
joke_fetcher/
├── lib/
│   └── joke_fetcher.rb
test.rb
```

* The main logic is inside `lib/joke_fetcher.rb`.
* `test.rb` is used to test the gem functionality from outside the gem folder.

---

### 3. joke\_fetcher.rb

Inside `joke_fetcher/lib/joke_fetcher.rb`, we define our module and class:

```ruby
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
```

---

### 4. test.rb

This file is placed outside the gem folder and is used to manually test the gem:

```ruby
# test.rb
$LOAD_PATH.unshift File.expand_path("joke_fetcher/lib", __dir__)
require "joke_fetcher"

JokeFetcher::Joke.random
```

Run it using:

```bash
ruby test.rb
```

If everything is working correctly, you’ll see a random programming joke printed in your terminal.

---

## 📚 Concepts Practiced

* Creating and using a Ruby gem manually
* Writing a gemspec file (for future packaging)
* Using third-party APIs with `httparty`
* Understanding `$LOAD_PATH` and how Ruby locates files
* Testing the gem locally before publishing

---

## 👨‍💻 Author

Made with curiosity by [@akhilk49](https://github.com/akhilk49)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

```


