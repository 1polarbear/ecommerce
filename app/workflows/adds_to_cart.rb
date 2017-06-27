class AddsToCart

  attr_accessor :user, :product_id, :amount, :product, :success

  def initialize(user:, product_id:, amount:)
    @user = user
    @amount = amount.to_i
    @product = Product.find(product_id)
    @success = false
  end

  def run
    begin
      Product.transaction do
        user_product = UserProduct.find_or_create_by(product_id: product_id, user_id: user.id)
        user_product.place_in_cart(amount)
        self.success = true
      end
    rescue
      self.success = false
    end
  end

end
