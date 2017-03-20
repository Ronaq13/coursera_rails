class AddColumnToSubscribe < ActiveRecord::Migration
  def change
    add_column :subscribes, :user_id, :integer
    add_column :subscribes, :course_id, :integer
  end
end
