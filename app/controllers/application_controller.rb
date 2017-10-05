class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if session[:order_id]
      puts "Found it"
      return Order.find(session[:order_id])
    else
      puts "New order created"
      return Order.new
    end
  end
end
