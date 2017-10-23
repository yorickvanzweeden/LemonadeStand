class HomeController < ApplicationController
  def index
    if !current_user.present?
      render "index" and return
    end

    profile = current_user.profile

    if profile.cook?
      @products = Product.where(cook_id: current_user.id)
      @cook_orders = Order.joins(:order_items).where( order_items: {product_id: Product.owner_products(profile)})
    end

    @orders = Order.where(profile_id: current_user.profile)

    render "index_#{current_user.profile.role}"
  end
end
