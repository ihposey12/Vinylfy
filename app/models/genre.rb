class Genre < ApplicationRecord
    has_many :records, dependent: :destroy
    
    has_many :user_genres, dependent: :destroy
    has_many :users, through: :user_genres

    def records_in_genre #use in display
        @records = Record.all
        @records.select {|rec| rec.genre == self}
    end

    def self.genre_most_records
        self.all.max_by {|gen| gen.records_in_genre}
    end
end