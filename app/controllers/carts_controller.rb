class CartsController < ApplicationController

  def show
    # @user = current_user
    # @current_cart = @user.current_cart
  end

  def checkout
    # @current_cart.status == "submitted"
    redirect_to cart_path(@current_cart)
  end

end
