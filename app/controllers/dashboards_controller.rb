class DashboardsController < ApplicationController

  def show
    if current_user.present?
      render "show_#{current_user.role}"
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end
