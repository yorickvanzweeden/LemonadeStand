class DashboardsController < ApplicationController

  def show
    if !current_user.present?
      raise ActionController::RoutingError.new('Not Found')
    end

    if current_user.cook?
      @products = Product.where(cook_id: current_user.id)
    end

    render "show_#{current_user.role}"
  end
end
