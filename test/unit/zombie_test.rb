require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  test "invalid without a name" do 
    z = Zombie.new
    assert !z.valid?, "Name is not being validated"
  end
end
