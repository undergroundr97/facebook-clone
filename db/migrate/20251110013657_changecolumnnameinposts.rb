class Changecolumnnameinposts < ActiveRecord::Migration[8.0]
  def change
    rename_column :posts, :users_id, :user_id
  end
end
