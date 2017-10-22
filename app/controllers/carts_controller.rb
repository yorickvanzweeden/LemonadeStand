class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
    @total_price = current_order.total_price
  end

  def checkout
    current_order.open!
    session[:order_id] = nil
    redirect_to cart_path
  end
end