require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = TensorParseJsonLab::DomainReview.new(signal: 47, slack: 22, drag: 31, confidence: 73)
    assert_equal 96, TensorParseJsonLab.domain_review_score(item)
    assert_equal "hold", TensorParseJsonLab.domain_review_lane(item)
  end
end
