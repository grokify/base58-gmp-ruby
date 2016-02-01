require './test/test_base.rb'

class Base58FailTest < Test::Unit::TestCase
  def test_fail
    assert_raise do
      Base58GMP.base58_to_integer(nil)
    end

    assert_raise do
      Base58GMP.from_to(nil, 'bitcoin', 'flickr')
    end

    assert_raise do
      Base58GMP.from_to(nil, 'bitcoin', 'deadbeef')
    end

    assert_raise do
      Base58GMP.from_to(nil, 'deadbeef', 'flickr')
    end
  end
end
