require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Jim", 10)
  end



end
