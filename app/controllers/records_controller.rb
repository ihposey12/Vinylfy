class RecordsController < ApplicationController
    def index
        @records = Record.all
    end

    def show
        @record = Record.find(params[:id])
        @genre = Genre.all
    end

    def new
        @record = Record.new
        @genres = Genre.all
    end

    def create
        @record = Record.create(record_params)
        if @record.valid?
            UserRecord.create(user_id: params[:record][:user_id], record_id: @record.id)
            redirect_to @record
        else
            flash[:errors] = @record.errors.full_messages
            redirect_to new_record_path
        end
    end

    def edit
        @record = Record.find(params[:id])
    end

    def update
        @record = Record.find(params[:id])
        @record.update(record_params)
        redirect_to record_path(@record)
    end

    def destroy
        @record = Record.find(params[:id])
        @record.destroy
        redirect_to record_path
    end

    def add_to_cart
        @record = Record.find(params[:id])
        current_cart << @record
        redirect_to current_cart_path
    end

    def current_cart
        @total = 0
        session[:cart] ||= []
    end

    def leave_review
        @record = Record.find(params[:id])
        redirect_to new_review_path
    end

    def count_cart_items
        @current_cart.size
    end

    def shop_records
        all_records
    end

    def checkout
        @user = User.find(session[:user_id])
        @records = current_cart
        @real_records = []
        @records.each do |r|
            @real_record = Record.find(r['id'].to_s)
            #@real_record.users.records.find(r['id'])
            @user.records << @real_record
            #@real_record.users = User.find_by(params['id'])
            #@real_records << @real_record
        end
        session[:cart] = []
    end

    def user_buy_record
        @record = Record.find(params[:id])
        @record.users = User.find(session[:user_id])
    end

    # def cart_total
    #     @current_cart.map {|c| c.price}.sum
    # end

    def record_high_price
        @user = User.find(params[:id])
        self.record_high_price
    end

    private

    def record_params
        params.require(:record).permit(:title, :description, :band, :release_date, :price, :genre_id)
    end
end