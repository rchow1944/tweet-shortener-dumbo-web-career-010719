# Write your code here.
require 'pry'
def dictionary 
  {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
end

def word_substituter(tweet)
  dict = dictionary
  tweet_arr = tweet.split(' ')
  tweet_arr.each_with_index do |word, i|
    if dict.keys.to_s.include? word.downcase
      binding.pry
      tweet_arr[i] = dict[word.downcase.to_sym]
    end
  end
  tweet_arr.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  