class StaticController < ApplicationController
    def show
        @records = Record.all
        render params[:page]
    end

    def high_price
        @records = Record.record_high_price
        render params[:page]
    end
    
    def sort_date
        render params[:page]
    end

    def sort_date_new
        render params[:page]
    end
end