class GenresController < ApplicationController
    def index
        #maybe?
    end

    def show
        @genre = Genre.find(params[:id])
        @records = @genre.records
    end
end