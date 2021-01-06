class RecordsController < ApplicationController
    def index
        @records = Record.all
    end

    def show
        @record = Record.find(params[:id])
    end

    def new
        @record = Record.new
        @genres = Genre.all
    end

    def create
        @record = Record.create(record_params)
        if @record.valid?
            redirect_to @record
        else
            flash[:errors] = @record.errors.full_messages
            redirect_to new_record_path
        end
    end

    def edit
        @record = Record.find(params[:id])
    end

    def update
        @record = Record.find(params[:id])
        @record.update(record_params)
        redirect_to record_path(@record)
    end

    def destroy
        @record = Record.find(params[:id])
        @record.destroy
        redirect_to record_path
    end

    def add_to_cart
        @record = Record.find(params[:id])
        @cart = session[:cart] || []
        @cart << @record.id
        redirect_to current_cart_path
    end

    def current_cart
        session[:cart] ||= @cart
    end

    def leave_review
        @record = Record.find(params[:id])
        redirect_to new_review_path
    end

    private

    def record_params
        params.require(:record).permit(:title, :description, :band, :release_date, :price, :genre_id, :user_ids)
    end
end