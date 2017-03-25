class RemoveKeyFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :key, :string
  end
end
