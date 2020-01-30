class User
  attr_reader :username, :tweets

  def initialize(username)
    @username = username
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def like_tweet(tweet)
    Like.new(self, tweet)
  end

  def likes
    Like.all.select do |like|
      like.user == self
    end
  end

  def liked_tweets
    #return an array of the tweets a user has liked
    self.likes.collect do |like|
      binding.pry
      like.tweet
    end
  end

end
