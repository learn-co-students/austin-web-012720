class Tweet
  attr_reader :message, :user

  @@all = []

  def initialize(message, user)
    @message = message
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    user.username
  end

  def liked_tweets
    #return an array of all the tweets a user has liked 
  end

end
