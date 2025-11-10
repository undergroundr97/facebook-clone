class Renamecolumninposts < ActiveRecord::Migration[8.0]
  def change
    rename_column :posts, :user_id, :post_creator_id
  end
end
