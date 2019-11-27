class Pub


  attr_reader(:name, :till)

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def increase_till_amount(drink)
    @till += drink.price
  end

  def verify_age(customer)
    return true if customer.age >= 18
  end

  def is_customer_too_drunk(customer)
    return true if customer.drunkeness >= 50
  end

end
