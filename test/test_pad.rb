require './test/test_base.rb'

class TestBase58GMPPad < Test::Unit::TestCase
  MULTI_EXAMPLES = [
    {
      "b58fp" => "111cLyvfgxMmJ4imn6MwxfEzb",
      "b58gp" => "000BiWTEFVjKg3HKL5jUVEcXA"
    }
  ]

  def test_from_to_padding
    MULTI_EXAMPLES.each do |test|
      assert_equal test['b58gp'], Base58GMP.from_to(test['b58fp'], :flickr, :gmp)
    end
  end  

end
