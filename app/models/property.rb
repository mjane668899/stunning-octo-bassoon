class Property < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :bookings

  def self.search(search)
    if search
      where(["title LIKE ?", "%#{search}%"]) # check for search params against name
    else
      all
    end
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
