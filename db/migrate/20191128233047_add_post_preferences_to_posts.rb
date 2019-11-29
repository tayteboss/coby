class AddPostPreferencesToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :age_preference, :text
    add_column :posts, :gender_preference, :text
    add_column :posts, :group_size, :text
  end
end
