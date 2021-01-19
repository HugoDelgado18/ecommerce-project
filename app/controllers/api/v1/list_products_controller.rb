class Api::V1::ListProductsController < ApplicationController

    def index
        list_products = ListProduct.all
        render json: list_products
    end

    def show
        list_product = ListProduct.find_by(id: params[:id])
        if list_product
            render json: list_product
        else
            render json: { message: 'list not found' }
        end
    end

    def create
        list_product = ListProduct.new(list_product_params)
        list_product.save

        render json: list_product
    end

    def update
        list_product = ListProduct.find_by(id: params[:id])
        list_product.update(list_product_params)

        render json: list_product
    end

    def destroy
        ListProduct.destroy(id: params[:id])
    end

    private
    def list_product_params
        params.require(:list_products).permit(:id, :user_id, :product_id)
    end

end
