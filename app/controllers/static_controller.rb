class StaticController < ApplicationController
    def show
        @record = Record.all
        render params[:page]
    end
end