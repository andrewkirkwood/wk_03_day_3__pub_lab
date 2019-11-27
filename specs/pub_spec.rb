require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')

class PubTest < MiniTest::Test

  def setup()
    drinks = ["Beer", "Whiskey", "Gin and Tonic"]
    @pub = Pub.new("The Typing Wrists", 50, drinks)

  end

  def test_returns_pub_name()
    assert_equal("The Typing Wrists", @pub.name)
  end

  def test_returns_pub_till_amount()
    assert_equal(50, @pub.till)
  end

  def test_pub_till_amount_can_be_increased()
    @pub.increase_till_amount(2)
    assert_equal(52, @pub.till)
  end

end
