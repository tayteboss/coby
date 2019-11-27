class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references:user, null:false, foreign_key:true
      t.references:event, null:false, foreign_key:true
      t.text :description
      t.text :age_group
      t.boolean :active_status
      t.integer :buddy_one
      t.integer :buddy_two
      
    end
  end
end
