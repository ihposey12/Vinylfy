class ApplicationController < ActionController::Base
    before_action :fetch_user
    before_action :require_login
    
    def fetch_user
        @logged_in = logged_in?
        @user = User.find(current_user_id) if logged_in?
    end

    def require_login
        unless logged_in?
            redirect_to new_log_in_path
        end
    end

    private
    
    def log_in_user(user_id)
        session[:user_id] = user_id
    end

    def current_user_id
        session[:user_id]
    end

    def logged_in?
        !!current_user_id
    end

    def log_out_user
        session.delete(:user_id)
        flash[:errors] = ['You Have Been Logged Out']
        redirect_to new_log_in_path
    end
end