class RemoveTeacherIdFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :teacher_id, :string
  end
end
