Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :products
  resources :order_items
  resources :orders, only: [:update]

  resource :cart, only: [:show] do
    collection do 
      get 'checkout'
    end
  end 
  root to: 'home#index'

  # Error pages
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  
  # Routing for static pages in /views/pages/*
  get "/:page" => "pages#show"
end
