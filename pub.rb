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

  def check_customer_drunkeness_level(customer)
    return customer.drunkeness
  end

  def check_customer_wallet_amount(customer)
    return customer.wallet
  end

  def sell_drink_to_customer(customer, drink)
    if verify_age(customer) == true && is_customer_too_drunk(customer) == false
      increase_till_amount(drink)
      customer.buys_drink(drink)
      customer.update_drunkeness(drink)
    else
      return "You can't buy a drink"
    end
  end

  def calculate_total_stock_value(drink,drink1,drink2)
    return (@drinks[:whiskey] * drink.price) + (@drinks[:beer] * drink1.price) + (@drinks[:gin_and_tonic] * drink2.price)
  end

end
