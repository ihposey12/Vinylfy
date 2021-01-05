class RecordsController < ApplicationController
    def index
        @records = Record.all
    end

    def show
        @record = Record.find(params[:id])
    end

    def new
        @record = Record.new
    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    def add_to_cart
        @record = Record.find(params[:id])
        @cart = session[:cart] || []
        @cart << @record
        session[:cart] ||= @cart
        redirect_to current_cart_path
    end

    def current_cart
        session[:cart] ||= @cart
    end

    private

    def record_params
        params.require(:record).permit(:title, :band, :release_date, :price, :genre_id)
    end
end