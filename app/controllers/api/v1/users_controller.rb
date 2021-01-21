class Api::V1::UsersController < ApplicationController

    def create
        @user = User.create(user_params)

        if @user.valid?
            @user.save

            payload = { user_id: @user.id }
            token = JWT.encode(payload, 'secret')

            render json: { auth_key: token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end


    def index
        users = User.all
        render json: users
    end

    
    def show
        current_user = User.find_by(id: params[:id])
        render json: current_user
    end



    private
    def user_params
        params.require(:user).permit(:email, :password, :firstname, :lastname, :address, :zipcode )
    end


end
