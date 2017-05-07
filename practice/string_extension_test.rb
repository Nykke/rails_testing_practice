require "test/unit"
require_relative "string_extension"

class StringExtensionTest < Test::Unit::TestCase

  def test_is_number
    assert "3".is_number?
  end

  def test_is_not_number
    assert !"Blah".is_number?
  end

  def test_humanize_function_added_to_string
    assert_respond_to "blah", :humanize
  end

# giving an optional message to see what's wrong
  def test_humanize_returns_something
    assert_not_nil "Yo".humanize, "humanize is returning nil"
  end

# matches expecting with actual
  def test_humanize
    assert_equal "Likes me brains!", "LIKES ME BRAINS!".humanize
  end

  # takes regex as a first parameter and matches with the second parameter
  def test_just_for_brains
    assert_match /brains/, "LIKES ME BRAINS!".humanize
  end

  # runtime errors
  def test_zombie_in_humanize_raises_error
    assert_raise(RuntimeError) { "zombie".humanize }
  end


end
