require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class PubTest < MiniTest::Test

  def setup()
    drinks = ["Beer", "Whiskey", "Gin and Tonic"]
    @pub = Pub.new("The Typing Wrists", 50, drinks)
    @drink = Drink.new("Whiskey", 2, 5)
    @customer = Customer.new("Jim", 10, 25, 55)
  end

  def test_returns_pub_name()
    assert_equal("The Typing Wrists", @pub.name)
  end

  def test_returns_pub_till_amount()
    assert_equal(50, @pub.till)
  end

  def test_pub_till_amount_can_be_increased()
    @pub.increase_till_amount(@drink)
    assert_equal(52, @pub.till)
  end

  def test_to_verify_customer_age_is_above_18
    assert_equal(true, @pub.verify_age(@customer))
  end

  def test_pub_refuses_sale_if_drunkeness_too_high
    assert_equal(true, @pub.is_customer_too_drunk(@customer))
  end

end
