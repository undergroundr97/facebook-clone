class FollowerReferences < ActiveRecord::Migration[8.0]
  def change
    remove_column :followers, :follower, :integer, if_exists: :true
    remove_column :followers, :followed_user_id, :integer, if_exists: :true
    add_reference :followers, :follower, foreign_key: { to_table: :users }
    add_reference :followers, :followed_user, foreign_key: { to_table: :users }
  end
end
