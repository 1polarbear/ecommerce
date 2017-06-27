module User
  class ShoppingCartsController < ApplicationController

    def show
      @shopping_cart = ShoppingCart.new(current_user)
    end

    def update
      adds_to_cart = AddsToCart.new(
        user: current_user,
        product_id: params[:product_id],
        amount: params[:amount]
      )
      adds_to_cart.run
      if adds_to_cart.success
        redirect_to shopping_cart_path
      else
        redirect_to root_path
      end
    end

  end
end
