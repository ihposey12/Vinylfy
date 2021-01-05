class User < ApplicationRecord
    has_many :user_records
    has_many :records, through: :user_records

    has_many :reviews
end