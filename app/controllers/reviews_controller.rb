class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end
    
    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
        @reviews = Review.all
        @record = Record.find(params[:record_id])
    end

    def create
        @review = Review.create(review_params)
        if @review.valid?
            redirect_to @review
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to @review
    end

    private

    def review_params
        params.require(:review).permit(:title, :description, :rating, :record_id).with_defaults(user_id: session[:user_id])
    end
end