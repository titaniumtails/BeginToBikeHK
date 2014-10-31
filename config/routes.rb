Rails.application.routes.draw do
  devise_for :users
  
  resources :bike_routes

  get 'tips' => 'home#tips'
  root 'home#index'

end
