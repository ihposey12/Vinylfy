class Record < ApplicationRecord
  belongs_to :genre

  has_many :user_records, dependent: :destroy
  has_many :users, through: :user_records

  has_many :reviews, dependent: :destroy

  def all_records
    @records = Record.all
  end
end