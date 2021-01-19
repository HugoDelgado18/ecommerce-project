Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/products' => 'books#index' or resources :product
  #  example
  resources :products
  resources :user
  resources :review
  resources :list
  resources :cart
  resources :order
  resources :order_products
  resources :list_products
  resources :cart_products

end
