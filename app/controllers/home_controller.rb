class HomeController < ApplicationController
  def index
    if !current_user.present?
      render "index" and return
    end

    if current_user.profile.cook?
      @products = Product.where(cook_id: current_user.id)
    end

    @orders = Order.where(profile_id: current_user.profile)

    render "index_#{current_user.profile.role}"
  end
end
