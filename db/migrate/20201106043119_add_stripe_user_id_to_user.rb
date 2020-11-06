class AddStripeUserIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :stripe_user_id, :string
  end
end
