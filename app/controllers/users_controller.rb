class UsersController < ApplicationController
skip_before_action :require_login, :only => [:create, :new]

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            log_in_user(@user.id)
            redirect_to @user
        else
            redirect_to new_log_in_path
        end
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