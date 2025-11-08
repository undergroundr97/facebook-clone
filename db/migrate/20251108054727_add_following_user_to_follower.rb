class AddFollowingUserToFollower < ActiveRecord::Migration[8.0]
  def change
    add_column :followers, :follower, :integer
    rename_column :followers, :user_id, :followed_user_id
  end
end
