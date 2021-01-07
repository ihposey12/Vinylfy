class AddDescriptionToRecord < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :description, :text
  end
end
