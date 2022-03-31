class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :email_confirmation
      t.string :password_digest
      t.integer :phone_num
      t.string :state
      t.string :city
      t.integer :pincode
      t.string :gender

      t.timestamps
    end
  end
end
