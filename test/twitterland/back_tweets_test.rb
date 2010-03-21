require 'test_helper'

class BackTweetsTest < Test::Unit::TestCase

  context "Hitting the BackTweets API" do
    should "return tweets referencing a URL" do
      stub_get 'http://backtweets.com/search.json?q=http%3A%2F%2Fsqueejee.com&key=OU812', 'backtweets.json'
      results = Twitterland::BackTweets.search('http://squeejee.com',  'OU812')
      results.items_per_page.should == 25
      results.start_index.should == 1
      results.total_results.should == 35
      last_tweet = results.tweets.last
      last_tweet.id = 1642929098
      last_tweet.from_user_id = 383935
      last_tweet.from_user = 'Curvezilla'
    end

    should "raise Invalid key if bad key" do
      stub_get 'http://backtweets.com/search.json?q=http%3A%2F%2Fsqueejee.com&key=OU812', 'backtweets_unauthenticated.json'
      assert_raise Twitterland::BackTweets::Unauthenticated do
        Twitterland::BackTweets.search('http://squeejee.com',  'OU812')
      end
    end
  end
  
end
