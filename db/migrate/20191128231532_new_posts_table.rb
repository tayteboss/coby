class NewPostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.text :description
      t.boolean :active_status
      t.text :event_time
      t.text :event_image
      t.text :api_event_id
    end
  end
end
