require './test/test_base.rb'

class TestBase58GMP < Test::Unit::TestCase
  ALPHABETS   = {
    'bitcoin' => '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz',
    'flickr'  => '123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ',
    'gmp'     => '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuv'
  }

  def test_alphabets_transcoding
    assert_equal ALPHABETS['bitcoin'], Base58GMP.from_to(ALPHABETS['flickr'], 'flickr', 'bitcoin')
    assert_equal ALPHABETS['bitcoin'], Base58GMP.from_to(ALPHABETS['gmp'], 'gmp', 'bitcoin')
    assert_equal ALPHABETS['flickr'], Base58GMP.from_to(ALPHABETS['bitcoin'], 'bitcoin', 'flickr')
    assert_equal ALPHABETS['flickr'], Base58GMP.from_to(ALPHABETS['gmp'], 'gmp', 'flickr')
    assert_equal ALPHABETS['gmp'], Base58GMP.from_to(ALPHABETS['bitcoin'], 'bitcoin', 'gmp')
    assert_equal ALPHABETS['gmp'], Base58GMP.from_to(ALPHABETS['flickr'], 'flickr', 'gmp')
  end

  def test_alphabets_digits
    ['gmp'].each { |alphabet|
      digits = ALPHABETS[alphabet].to_s.split('')
      (0..57).to_a.each { |decimal|
        assert_equal digits[decimal].to_s, Base58GMP.encode(decimal,alphabet)
        assert_equal decimal.to_i, Base58GMP.decode(digits[decimal].to_s, alphabet).to_i
      }
   }
  end
end
