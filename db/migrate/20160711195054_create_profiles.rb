class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :location
      t.string :age
      t.string :gender

      t.references :user, null: false, foreign_key: true
      t.timestamps null: false
    end

    add_index :profiles, :user_id, unique: true
  end
end
