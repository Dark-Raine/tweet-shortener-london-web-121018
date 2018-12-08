# Write your code here.
require 'pry'
def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"

  }

end

def word_substituter(tweet)
  shorting = tweet.split(" ")
  shorting = shorting.collect do |word|

      if dictionary[word]
        dictionary[word]
      else
        word
      end
  end
  shorting.join(" ")

end

def bulk_tweet_shortener(tweets)

  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet

  end
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[0..139]
  else
    tweet

  end
end
