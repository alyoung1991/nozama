class Api::ReviewsController < ApplicationController
    before_action :ensure_logged_in

    def index
        @reviews = Review.get_product_reviews(params[:product_id])
        render :index
    end

    def show
        @review = Review.find(params[:id])
        @user = @review.author
        render :show
    end

    def create
        @user = current_user
        @review = current_user.reviews.new(review_params)

        if @review.save
            render :show
        else
            render json: @review, status: :unprocessable_entity
        end
    end

    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
            render json: @review
        else
            render json: @review.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        @review = current_user.reviews.find(params[:id])
        @review.destroy
        render json: @review
    end

    private

    def review_params
        params.require(:review).permit(:rating, :headline, :body, :product_id)
    end
end