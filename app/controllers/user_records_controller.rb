class UserRecordsController < ApplicationController
    def new

    end

    def create

    end

    def update

    end

    def edit

    end

    def destroy

    end

    def switch_users
        @record = Record.find(params[:id])
        @user_records = UserRecord.find_by(record_id: params[:id])
    end

    private
    
    def user_record_params
        params
    end
end