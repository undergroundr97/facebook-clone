class RemoveColumnsInInvites < ActiveRecord::Migration[8.0]
  def change
    remove_column :invites, :from
    remove_column :invites, :user_id
  end
end
