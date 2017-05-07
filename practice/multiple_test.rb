require "test/unit"
require_relative "multiple"

class MultipleTest < Test::Unit::TestCase
  def test_multiple_of
    assert Multiple.multiple_of?(10,5), "10 should be a multiple of 5"
  end
end
