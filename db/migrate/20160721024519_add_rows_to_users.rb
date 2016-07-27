class AddRowsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
  end
end
