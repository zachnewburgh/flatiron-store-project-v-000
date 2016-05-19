class CartsController < ApplicationController

  def show
  end

  def checkout
    current_cart.checkout
    redirect_to cart_path
  end

end
