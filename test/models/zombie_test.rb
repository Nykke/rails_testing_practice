require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  # failure message
  test "invalid without a name" do
    z = Zombie.new
    assert !z.valid?, "Name is not being validated"
  end

  # validation tests ran with fixtures set
  test "valid with all attributes" do
    z = zombies(:ash)
    assert z.valid?, "Zombie was not valid"
  end

  test "invalid name gives error message" do
    z = zombies(:ash)
    z.name = nil
    z.valid?
    assert_match /can't be blank/, z.errors[:name].join,
      "Presence error not found on zombie"
  end

  # first time this runs, it will fail, we would need to update our model to get valid test
  test "can generate avatar_url" do
    z = zombies(:ash)
    assert_equal "http://zombitar.com/#{z.id}.jpg", z.avatar_url
  end

  # testing model relationships
  # these tweets tests will fail until they are added to the fixtures file
  # one way to have the model respond to tweets
  test "should respond to tweets" do
    z = zombies(:ash)
    assert_respond_to z, :tweets
  end

  # another to have the model contain tweets, this one is dependent upon fixtures
  # test "should contain tweets" do
  #   z = zombies(:ash)
  #   assert_equal [tweets(:ash_2), tweets(:ash_1)], zombies(:ash).tweets
  # end

 # this model that contain tweets is a better way to write it
 test "should contain tweets that belong to zombie" do
   z = zombies(:ash)
  #  assert z.tweets.all? { |t| t.zombie == z }
  assert_equal tweets(:ash_1), z.tweets, "tweet doesn't belong to zombie"
 end


end
