class AddsToCart

  attr_accessor :user, :product_id, :quantity, :product, :success

  def initialize(user:, product_id:, quantity:)
    @user = user
    @quantity = quantity.to_i
    @product = Product.find(product_id)
    @success = false
  end

  def run
    begin
      Product.transaction do
        user_product = UserProduct.find_or_create_by(product_id: product_id, user_id: user.try(:id))
        user_product.place_in_cart(quantity)
        self.success = true
      end
    rescue => e
      Rails.logger.info e
      self.success = false
    end
  end

end
