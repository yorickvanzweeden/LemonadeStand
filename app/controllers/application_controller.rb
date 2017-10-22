class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if session[:order_id]
      return Order.find(session[:order_id])
    else
      return Order.new
    end
  end
end
