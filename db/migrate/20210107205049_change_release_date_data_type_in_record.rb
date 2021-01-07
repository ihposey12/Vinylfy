class ChangeReleaseDateDataTypeInRecord < ActiveRecord::Migration[6.1]
  def change
    change_column :records, :release_date, :integer
  end
end
