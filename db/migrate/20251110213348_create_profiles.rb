class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.string :name
      t.string :surname
      t.string :location
      t.date :birthdate
      t.string :gender
      t.string :avatar_url

      t.timestamps
    end
  end
end
