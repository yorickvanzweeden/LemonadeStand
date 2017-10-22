class PagesController < ApplicationController
  def show
    begin
      render template: "pages/#{params[:page]}"
    rescue ActionView::MissingTemplate => error
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end