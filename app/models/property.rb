class Property < ApplicationRecord
  belongs_to :user, :optional => true

  def self.search(search)
    if search
      where(["title LIKE ?", "%#{search}%"]) # check for search params against name
    else
      all
    end
  end
  
end
