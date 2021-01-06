class LogInController < ApplicationController
    skip_before_action :require_login, :only => [:create, :new]

    def new
        @user = User.new
    end

    def create
        byebug
        @user = User.find_by(username:params[:log_in][:username])
        if @user && @user.authenticate(params[:log_in][:password])
            log_in_user(@user.id)
            redirect_to @user
        else
            flash[:errors] = ['Invalid']
            redirect_to new_log_in_path
        end
    end

    def destroy
        log_out_user
    end
end