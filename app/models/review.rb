class Review < ApplicationRecord
  belongs_to :record
  belongs_to :user
  
  validates :title, presence: true
  validates :description, presence: true
  validates :rating, presence: true

  def self.count_reviews
    self.all.count
  end

  def self.highest_rating
    self.select {|rev| rev.rating == 5}
  end

  def self.lowest_rating
    self.select {|rev| rev.rating == 1}
  end

  def self.sort_rating_low
    self.all.sort_by {|r| r.rating}
  end

  def self.sort_by_rating_high
    self.all.sort_by {|r| -r.rating}
  end
end