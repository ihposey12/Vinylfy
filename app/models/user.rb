class User < ApplicationRecord
    has_many :user_records
    has_many :records, through: :user_records

    has_many :reviews

    validates :name, :username, :password, presence: true
    validates :username, uniqueness: true
    validates :password, length: {minimum: 7}
end