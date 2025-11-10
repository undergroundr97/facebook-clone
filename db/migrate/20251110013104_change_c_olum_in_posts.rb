class ChangeCOlumInPosts < ActiveRecord::Migration[8.0]
  def change
    remove_reference :posts, :post_creator
    add_reference :posts, :users, foreign_key: { to_table: :users }
  end
end
