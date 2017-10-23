class OrdersController < ApplicationController

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end
end