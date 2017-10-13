Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :order_items
  resource :cart, only: [:show]
  root to: 'home#index'

  # Error pages
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  
  # Routing for static pages in /views/pages/*
  get "/:page" => "pages#show"
end
