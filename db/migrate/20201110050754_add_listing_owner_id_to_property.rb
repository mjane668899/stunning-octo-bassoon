class AddListingOwnerIdToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :listing_owner_id, :string
  end
end
