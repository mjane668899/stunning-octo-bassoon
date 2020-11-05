class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :image
      t.string :telephone
      t.boolean :admin
      t.text :details

      t.timestamps
    end
  end
end
