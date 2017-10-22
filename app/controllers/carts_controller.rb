class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
    @total_price = current_order.total_price
  end
end