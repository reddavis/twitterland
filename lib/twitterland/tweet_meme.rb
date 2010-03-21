require 'twitterland/tweet_meme/analytics'
require 'twitterland/tweet_meme/stories'
require 'twitterland/tweet_meme/comments'

module Twitterland
  module TweetMeme
    include HTTParty
    base_uri 'api.tweetmeme.com'
    format :json

    # Takes any URL posted to Twitter and resolves it to its original URL as well as details about that webpage, such as the title.
    # 
    #   Twitterland::TweetMeme.url_info('http://squeejee.com')
    def self.url_info(url)
      Mash.new get("/url_info.json", :query => {:url => url})
    end
  
  end
end