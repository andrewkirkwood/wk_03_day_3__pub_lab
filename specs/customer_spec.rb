require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../drink')


class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Jim", 10)
    @drink = Drink.new("Whiskey", 2)
  end

  def test_returns_customer_name()
    assert_equal("Jim", @customer.name)
  end

  def test_returns_customer_wallet()
    assert_equal(10, @customer.wallet)
  end

  def test_returns_customer_drink_count()
    assert_equal(0, @customer.drink_count)
  end

  def test_customer_buys_drink()
    @customer.buys_drink(@drink)
    assert_equal(1, @customer.drink_count)
    assert_equal(8, @customer.wallet)
  end
end
