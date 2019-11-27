class Customer

  attr_reader(:name, :wallet)

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @drinks_drank = []
  end

  def drink_count()
    @drinks_drank.length()
  end

  def buys_drink(drink)
    @drinks_drank.push(drink.name)
    @wallet -= drink.price
  end
end
