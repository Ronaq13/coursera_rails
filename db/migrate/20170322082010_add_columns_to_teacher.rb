class AddColumnsToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :username, :string
    add_column :teachers, :gender, :string
    add_column :teachers, :short_bio, :string
    add_column :teachers, :age, :string
    add_column :teachers, :photo, :string
  end
end
