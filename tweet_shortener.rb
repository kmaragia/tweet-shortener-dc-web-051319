def dictionary(tweet)
  words_to_be_substituted = {"hello" =>"hi","to"=>"2","two"=> "2","too"=> "2","for"=> "4", "four"=> "4","be"=> "b","you" => 'u',"at"=>"@","and"=> "&"}
end
def word_substituter (tweet)
 x = tweet.split(" ")
  tweet_array.collect do |word|
    replacements.each do |key, value|
      word = value if word.downcase == key
    end
    word
  end.join(" ")
end
","&")
  return tweet
end
      
def bulk_tweet_shortener(arr)
  arr.collect do |tweet|
    word_substituter(tweet)
    puts arr
  end
end

def selective_tweet_shortener(tweet)
  t = tweet.scan(/./)
  if t.length <= 140
    return tweet
  end
  if t.length > 140
    return word_substituter(tweet)
  end
end


def shortened_tweet_truncator(tweet)
  t = tweet.scan(/./)
  if t.length <= 140
    return tweet
  end
  word_substituter(tweet)
  if t.length > 140
    tweet = tweet[0..140]
    return tweet + "..."
  end
end
    
  