def dictionary(tweet)
  words_to_be_substituted = {"hello" =>"hi","to"=>"2","two"=> "2","too"=> "2","for"=> "4", "four"=> "4","be"=> "b","you" => 'u',"at"=>"@","and"=> "&"}
end
def word_substituter (tweet)
  
  tweet.sub!("hello","2")
  tweet.sub!("to","2")
  tweet.sub!("two","2")
  tweet.sub!("too","2")
  tweet.sub!("four","4")
  tweet.sub!("for","4")
  tweet.sub!("be","b")
  tweet.sub!("you","u")
  tweet.sub!("at","@")
  tweet.sub!("and","&")
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
    
  