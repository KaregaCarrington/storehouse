Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users

  resources :products

  resources :charges
  
  root 'home#index'
  get 'home/index'
  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
