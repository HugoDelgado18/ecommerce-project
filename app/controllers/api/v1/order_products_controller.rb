class Api::V1::OrderProductsController < ApplicationController

    def index
        order_products = OrderProduct.all
        render json: order_products
    end

    def show
        order_product = OrderProduct.find_by(id: params[:id])
        if order_product
            render json: order_product
        else
            render json: { message: 'order not found' }
        end
    end

    def create
        order_product = OrderProduct.new(order_product_params)
        order_product.save

        render json: order_product
    end

    def update
        order_product = OrderProduct.find_by(id: params[:id])
        order_product.update(order_product_params)

        if order_product.save
            render json: order_product
        end
    end

    def destroy
        OrderProduct.destroy(id: params[:id])
    end

    private
    def order_product_params
        params.require(:order_products).permit(:id, :order_id, :product_id)
    end

end
