class ReviewsController < ApplicationController
    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    def create

    end

    def update

    end

    def edit

    end

    def destroy

    end

    private

    def review_params
        params.require(:review).permit(:description, :rating, :record_id, :user_id)
    end
end