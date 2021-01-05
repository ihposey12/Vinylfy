class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
    end

    def show
        @user = User.find(params[:id])
        @records = @user.records
        @genres = Genre.all
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password)
    end
end