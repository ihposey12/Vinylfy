class Review < ApplicationRecord
  belongs_to :record
  belongs_to :user
  
  validates :title, presence: true
  validates :description, presence: true
  validates :rating, presence: true
end