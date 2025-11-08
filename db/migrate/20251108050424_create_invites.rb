class CreateInvites < ActiveRecord::Migration[8.0]
  def change
    create_table :invites do |t|
      t.integer :from
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
