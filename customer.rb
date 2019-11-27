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
end
