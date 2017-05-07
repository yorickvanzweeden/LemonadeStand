Rails.application.routes.draw do
  resources :subscriptions
  resources :products
  root to: 'home#index'

  # Error pages
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
end
