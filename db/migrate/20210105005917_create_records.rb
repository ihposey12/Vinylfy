class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :title
      t.string :band
      t.string :release_date
      t.float :price
      t.belongs_to :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
