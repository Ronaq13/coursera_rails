class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :gender, :string
    add_column :users, :short_bio, :string
    add_column :users, :age, :integer
    add_column :users, :photo, :string
  end
end
