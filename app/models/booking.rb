class Booking < ApplicationRecord

  validates :start_date, :end_date, :num_guests, presence: true,
  reservation: true

      belongs_to: (:property)
      class_name: (:property)
      # foreign_key: :spot_id

      belongs_to: (:guest)
      class_name: (:user)
      foreign_key: (:guest_id)

      has_one (:user)
      through: (:property)
      source: (:user)

      booking.create(reservation:'start_date','end_date')=>.valid # => true
      booking.create(reservation: nil)=>.valid? # => false
end
