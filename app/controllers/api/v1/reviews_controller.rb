class Api::V1::ReviewsController < ApplicationController

def index
    reviews = Review.all
    render json: reviews
end

def show
    review = Review.find_by(id: params[:id])
    render json: review
end

def create 
    review = Review.new(review_params)
    review.save
    render json: review
end

# def update 
#     review = Review.find_by(id: params[:id])
#     review.update_attributes()
# end

def destroy
    Review.destory(params[:id])
end



private
def review_params
    params.private(:review).permit(:id, :content, :user_id, :product_id)
end


end
