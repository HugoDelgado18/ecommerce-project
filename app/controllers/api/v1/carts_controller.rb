class Api::V1::CartsController < ApplicationController

    def index
        carts = Cart.all

        render json: carts
    end

    def show
        cart = Cart.find_by(id: params[:id])

        render json: cart
    end

end
