class Api::V1::OrdersController < ApplicationController
    
    def index
        orders = Order.all
        render json: orders
    end

    def show
        order = Order.find_by(id: params[:id])
        render json: order
    end

    def create
        order = Order.new(order_params)
        order.save

        render json: order
    end

    # def update
    #     order = Order.find_by(id: params[:id])
    #     order.update!
    # end

    private
    def order_params
        params.require(:order).permit(:user_id , :payment, :address, :shipped)
    end



end
