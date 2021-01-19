class Api::V1::ListsController < ApplicationController

    def index
        lists = List.all
        render json: lists
    end

    def show
        list = List.find_by(id: params[:id])
        render json: list
    end

    def create
        list = List.new(list_params)
        list.save

        render json: list
    end

    def destroy
        List.destroy(params[:id])
    end

    private
    def list_params
        params.require(:list).permit(:user_id, :product_id)
    end

end
