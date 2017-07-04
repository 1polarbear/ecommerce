class ShoppingCart

  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def products
    @products ||= user.products.in_cart
  end

  def total_cost
    # calculate total with price and quantity
    # products.map(&:price).sum.to_money
  end

end
