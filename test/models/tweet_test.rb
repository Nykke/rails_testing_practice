require 'test_helper'

class TweetTest < ActiveSupport::TestCase

  test "invalid without a status" do
    tweet = Tweet.new
    assert !tweet.valid?, "Tweet not valid without a status"
  end

  # # validating tweet
  # test "valid with all attributes" do
  #   zombie = Zombie.new
  #   tweet = Tweet.new
  #
  #   tweet.status = "I want to eat your brains!"
  #   tweet.zombie = zombie
  #
  #   assert tweet.valid?, "Tweet was not valid"
  # end

  # validating tweet using fixtures
  test "valid with all attributes" do
    tweet = tweets(:ash_1)

    assert tweet.valid?, "tweet isn't valid"
  end

  test "can detect brains" do
    tweet = tweets(:ash_2)

    assert tweet.brains?, "tweet contains brains"
  end

  test "contains a zombie" do
    tweet = tweets(:ash_2)
    assert_equal zombies(:ash), tweet.zombie, "tweet doesn't contain a zombie"

 end


end
