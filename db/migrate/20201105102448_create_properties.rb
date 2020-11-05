class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.integer :guest
      t.integer :bedroom
      t.integer :bathroom
      t.integer :bed
      t.integer :parking_space
      t.integer :available_date
      t.string :photo
      t.text :details

      t.timestamps
    end
  end
end
