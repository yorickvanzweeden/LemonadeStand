class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.add_product(item_params)
    if @order.save
      session[:order_id] = @order.id
      redirect_to products_path
    else
      flash.now[:error] = "Something is wrong"
      redirect_to products_path
    end
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end