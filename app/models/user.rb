class User < ApplicationRecord
    has_secure_password

    validates :email, uniqueness: { case_sensitive: false }

    has_many :orders
    has_many :lists
    has_one :cart
    has_many :reviews
    has_many :products, through: :reviews
end
