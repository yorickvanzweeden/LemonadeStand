class HomeController < ApplicationController
  def index
    if !current_user.present?
      render "index"
      return
    end

    if current_user.cook?
      @products = Product.where(cook_id: current_user.id)
    end

    render "index_#{current_user.role}"
  end
end
