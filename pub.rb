class Pub


  attr_reader(:name, :till)

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def increase_till_amount(item)
    @till += item.price
  end

  def verify_age(customer)
    return true if customer.age >= 18
    return false if customer.age <= 17
  end

  def is_customer_too_drunk(customer)
    return true if customer.drunkeness >= 50
    return false if customer.drunkeness < 49
  end

  def do_i_refuse_sale(customer)
    if verify_age(customer) == true && is_customer_too_drunk(customer) == false
      return "You can buy a drink!"
    else
      return "You can't buy a drink"
    end
  end

end
