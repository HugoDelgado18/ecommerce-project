class Api::V1::CartProductsController < ApplicationController

    def index
        cart_products = CartProduct.all

        render json: cart_products
    end

    def show
        cart_product = CartProduct.find_by(id: params[:id])

        if cart_product
            render json: cart_product
        else
            render json: { message: 'item not found' }
        end

    end

    def create
        cart_product = CartProduct.new(cart_product_params)
        cart_product.save

        render json: cart_product
    end

    def update
        cart_product = CartProduct.find_by(id: params[:id])
        cart_product.update(cart_product_params)

        render json: cart_product
    end

    def destroy
        CartProduct.destroy(id: params[:id])
    end


    private
    def cart_product_params
        params.require(:cart_products).permit(:id, :cart_products, :product_id)
    end

end
