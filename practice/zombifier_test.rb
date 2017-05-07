require "test/unit"
require_relative "zombifier"

class ZombifierTest < Test::Unit::TestCase
  def test_zombify_returns_something
    z = Zombifier.new("make me a zombie")
    assert_not_nil z.zombify, "zombify returns nil"
  end

  def test_zombify_brains
    z = Zombifier.new("I love your arms")
    assert_match /BRAINS/, z.zombify
  end

  def test_zombify_upcase
    z = Zombifier.new("Hello World")
    assert_equal z.zombify, z.zombify
  end

  def test_brains_in_zombify_raises_error
    z = Zombifier.new("BRAINS")
    assert_raise (RuntimeError) {z.zombify}
  end

  def test_zombify_returns_a_string
    z = Zombifier.new("I like knees")
    assert_kind_of String, z.zombify 
  end
end
