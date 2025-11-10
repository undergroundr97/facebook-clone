class RemovecolumnfromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_reference :users, :posts
  end
end
