Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/products' => 'books#index' or resources :product
  #  example
  namespace :api do
    namespace :v1 do

  resources :products
  resources :users

  post '/login', to: 'sessions#create'

  resources :reviews
  resources :lists
  resources :carts
  resources :orders
  resources :order_products
  resources :list_products
  resources :cart_products

    end
  end


end
