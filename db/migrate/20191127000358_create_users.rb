class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.text :password_digest
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.text :profile_pic
      t.string :gender
      t.text :bio
      t.string :location
    end
  end
end
