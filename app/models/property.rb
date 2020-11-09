class Property < ApplicationRecord
  belongs_to :user, :optional => true

  def self.search(search)
    if search
      where(["name LIKE ?", "%#{search}%"]) # check for search params against name
    else
      all
    end
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
