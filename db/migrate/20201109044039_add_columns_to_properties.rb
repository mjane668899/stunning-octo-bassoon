class AddColumnsToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :title, :text
    add_column :properties, :street_number, :integer
    add_column :properties, :suburb, :text
    add_column :properties, :state, :text
    add_column :properties, :country, :text
    add_column :properties, :description, :text
    add_column :properties, :user_id, :integer
  end
end
