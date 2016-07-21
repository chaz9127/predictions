class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.date :submitted_date
      t.date :outcome_date
      t.integer :article_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
