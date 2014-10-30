Rails.application.routes.draw do
  devise_for :users
  resources :bike_routes
  get 'more' => 'home#more'

  root 'home#index'
end
