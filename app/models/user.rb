class User < ApplicationRecord
    has_secure_password

    has_many :user_records, dependent: :destroy
    has_many :records, through: :user_records

    has_many :reviews, dependent: :destroy

    has_many :user_genres, dependent: :destroy
    has_many :genres, through: :user_genres

    validates :name, :username, :password, presence: true
    validates :username, uniqueness: true
    validates :password, length: {minimum: 7}
end