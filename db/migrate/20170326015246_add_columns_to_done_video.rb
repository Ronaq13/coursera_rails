class AddColumnsToDoneVideo < ActiveRecord::Migration
  def change
    add_column :done_videos, :course_id, :integer
  end
end
