require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = TensorParseJsonLab::Signal.new(demand: 73, capacity: 78, latency: 27, risk: 7, weight: 13)
    assert_equal 147, TensorParseJsonLab.score(signal_case_1)
    assert_equal 'review', TensorParseJsonLab.classify(signal_case_1)
    signal_case_2 = TensorParseJsonLab::Signal.new(demand: 99, capacity: 77, latency: 20, risk: 15, weight: 7)
    assert_equal 144, TensorParseJsonLab.score(signal_case_2)
    assert_equal 'review', TensorParseJsonLab.classify(signal_case_2)
    signal_case_3 = TensorParseJsonLab::Signal.new(demand: 78, capacity: 87, latency: 15, risk: 25, weight: 11)
    assert_equal 60, TensorParseJsonLab.score(signal_case_3)
    assert_equal 'review', TensorParseJsonLab.classify(signal_case_3)
  end
end
