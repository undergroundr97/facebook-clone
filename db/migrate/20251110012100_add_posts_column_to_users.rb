class AddPostsColumnToUsers < ActiveRecord::Migration[8.0]
  def change
    add_reference :users, :posts, null: true, foreign_key: { to_table: :posts }
  end
end
