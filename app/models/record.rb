class Record < ApplicationRecord
  belongs_to :genre

  has_many :user_records, dependent: :destroy
  has_many :users, through: :user_records

  has_many :reviews, dependent: :destroy

  validates :title, :band, :release_date, :price, :description, :genre_id, presence: true

  def all_records
    @records = Record.all
  end

  def self.record_count
    self.all.count
  end

  def self.record_high_price
    self.all.max_by {|r| r.price}
  end

  def self.record_low_price
    self.all.min_by {|r| r.price}
  end

  def self.oldest_record
    self.all.min_by {|r| r.release_date}
  end

  def self.newest_record
    self.all.max_by {|r| r.release_date}
  end

  def self.band_with_most_records
    self.all.max_by {|r| r.band}.band
  end

  def self.sort_by_price_low
    self.all.sort_by {|r| r.price}
  end

  def self.sort_by_price_high
    self.all.sort_by {|r| -r.price}
  end

  def self.sort_by_title_az
    self.all.sort_by {|r| r.title}
  end

  def self.sort_by_title_za
    self.all.sort_by {|r| r.title}.reverse
  end

  def self.sort_by_date_old
    self.all.sort_by {|r| r.release_date}
  end

  def self.sort_by_date_new
    self.all.sort_by {|r| -r.release_date}
  end
end