class User < ApplicationRecord
    has_many :orders
    has_many :lists
    has_one :cart
    has_many :reviews
    has_many :products, through: :reviews
end
