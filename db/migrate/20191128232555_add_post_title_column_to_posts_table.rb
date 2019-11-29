class AddPostTitleColumnToPostsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :post_title, :text
  end
end
