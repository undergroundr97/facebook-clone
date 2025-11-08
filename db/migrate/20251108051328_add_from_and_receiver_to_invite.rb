class AddFromAndReceiverToInvite < ActiveRecord::Migration[8.0]
  def change
    add_reference :invites, :from_user, null: true, foreign_key: { to_table: :users }
    add_reference :invites, :to_user, null: true, foreign_key: { to_table: :users }
  end
end
