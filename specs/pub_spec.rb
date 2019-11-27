require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../drink')
require_relative('../customer')
require_relative('../food')


class PubTest < MiniTest::Test

  def setup()
    drinks = ["Beer", "Whiskey", "Gin and Tonic"]
    @pub = Pub.new("The Typing Wrists", 50, drinks)
    @drink = Drink.new("Whiskey", 2, 5)
    @customer1 = Customer.new("Jim", 10, 25, 55)
    @customer2 = Customer.new("Dave", 20, 17, 10)
    @customer3 = Customer.new("Bob", 30, 23, 5)
    @food = Food.new("Pizza", 5, 2)

  end

  def test_returns_pub_name()
    assert_equal("The Typing Wrists", @pub.name)
  end

  def test_returns_pub_till_amount()
    assert_equal(50, @pub.till)
  end

  def test_pub_till_amount_can_be_increased__for_drink()
    @pub.increase_till_amount(@drink)
    assert_equal(52, @pub.till)
  end

  def test_pub_till_amount_can_be_increased__for_food()
    @pub.increase_till_amount(@food)
    assert_equal(55, @pub.till)
  end

  def test_to_verify_customer_age_is_above_18
    assert_equal(true, @pub.verify_age(@customer1))
    assert_equal(false, @pub.verify_age(@customer2))

  end

  def test_pub_refuses_sale_if_drunkeness_too_high
    assert_equal(true, @pub.is_customer_too_drunk(@customer1))
  end

  def test_pub_refuses_a_sale
    assert_equal("You can buy a drink!", @pub.do_i_refuse_sale(@customer3))
  end
end
