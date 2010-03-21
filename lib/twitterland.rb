$:.unshift(File.dirname(__FILE__))

require 'forwardable'
require 'rubygems'

gem 'mash', '0.0.3'
require 'mash'

gem 'httparty', '>= 0.4.5'
require 'httparty'

require 'twitterland/zutual'
require 'twitterland/autoff'
require 'twitterland/foller_me'
require 'twitterland/follow_cost'
require 'twitterland/twitter_counter'
require 'twitterland/twinfluence'
require 'twitterland/mrtweet'
require 'twitterland/twitter_grader'
require 'twitterland/tweet_blocker'
require 'twitterland/back_tweets'
require 'twitterland/thumbfight'
require 'twitterland/tweet_meme'
require 'twitterland/one40_proof'

module Twitterland
  class TwitterError < StandardError
    attr_reader :data
    
    def initialize(data)
      @data = data
      super
    end
  end
  
  class RateLimitExceeded < TwitterError; end
  class Unauthorized      < TwitterError; end
  class General           < TwitterError; end
  
  class Unavailable   < StandardError; end
  class InformTwitter < StandardError; end
  class NotFound      < StandardError; end
end

#directory = File.expand_path(File.dirname(__FILE__))

#require File.join(directory, 'twitterland', 'zutual')
#require File.join(directory, 'twitterland', 'autoff')
#require File.join(directory, 'twitterland', 'foller_me')
#require File.join(directory, 'twitterland', 'follow_cost')
#require File.join(directory, 'twitterland', 'twitter_counter')
#require File.join(directory, 'twitterland', 'twinfluence')
#require File.join(directory, 'twitterland', 'mrtweet')
#require File.join(directory, 'twitterland', 'twitter_grader')
#require File.join(directory, 'twitterland', 'tweet_blocker')
#require File.join(directory, 'twitterland', 'back_tweets')
#require File.join(directory, 'twitterland', 'thumbfight')
#require File.join(directory, 'twitterland', 'tweet_meme')
#require File.join(directory, 'twitterland', 'one40_proof')
