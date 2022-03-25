require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

class ConvertHassSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEST
    {
      :name => 'Alice',
      :age => 20,
      :gender => :female
    }
    TEST
    expected = <<~TEXT
    {
      name: 'Alice',
      age: 20,
      gender: :female
    }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
end


# test = convert_hash_syntax(old_syntax)
# puts test
# assert_equal expected, test