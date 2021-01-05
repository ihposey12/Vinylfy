class RecordsController < ApplicationController
    def index

    end

    def show
        @record = Record.find(params[:id])
    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def record_params
        params.require(:record).permit(:title, :band, :release_date, :price, :genre_id)
    end
end