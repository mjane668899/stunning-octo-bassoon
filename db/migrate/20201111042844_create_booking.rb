class CreateBooking < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.integer :nights
      t.integer :total_price
      t.integer :guests
      t.integer :user_id
      t.integer :property_id
    end
  end
end
