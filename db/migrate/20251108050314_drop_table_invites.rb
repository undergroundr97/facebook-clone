class DropTableInvites < ActiveRecord::Migration[8.0]
  def change
    drop_table :invites
  end
end
