class CartsController < ApplicationController

  def show
  end

  def checkout
    @cart = current_cart
    @cart.checkout
    @cart.destroy
    redirect_to cart_path
  end

end
