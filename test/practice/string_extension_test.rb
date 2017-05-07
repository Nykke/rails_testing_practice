require "test/unit"
require_relative "string_extension"

class StringExtensionTest < Test::Unit::TestCase

  def test_is_number
    assert "3".is_number?
  end

  def test_is_not_number
    assert !"Blah".is_number?
  end


end
