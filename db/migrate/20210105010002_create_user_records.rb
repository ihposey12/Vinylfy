class CreateUserRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :user_records do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :record, null: false, foreign_key: true

      t.timestamps
    end
  end
end
