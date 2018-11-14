def dictionary
  change = {
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
  tweet.split(" ").map do |word|
  if dictionary.keys.include?(word.downcase)
    word = dictionary[word.downcase]
  else
    word
  end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |post|
    puts word_substituter(post)
  end
end

def selective_tweet_shortener(tweet)
  tweet.split(" ").map do |post|
    if post.length > 140
      word_substituter(post)
    elsif post.length < 140
      post
    end
  end
end

def shortened_tweet_truncator
  tweet.split