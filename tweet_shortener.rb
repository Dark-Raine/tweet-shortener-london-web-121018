# Write your code here.
require 'pry'
def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"

  }

end

def word_substituter(tweet)
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"

  }
  keys = []
  keys = hash.keys
  counter = 0

  shorting = []
  shorting = tweet.split
  shorting = shorting.collect do |word|
    binding.pry
    while counter < keys.length
      if word == keys[counter]
        word = hash.fetch(keys[counter])

      end
      counter+=1

    end
    shorting = shorting.to_s
  end


end
