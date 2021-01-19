class Product < ApplicationRecord
    has_many :order_products
    has_many :orders, through: :order_products
    has_many :reviews
    has_many :users, through: :reviews
    has_many :list_products
    has_many :lists, through: :list_products
    has_many :cart_products
    has_many :carts, through: :cart_products
end
