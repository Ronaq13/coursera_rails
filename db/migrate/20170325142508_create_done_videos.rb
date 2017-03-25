class CreateDoneVideos < ActiveRecord::Migration
  def change
    create_table :done_videos do |t|
      t.integer :user_id
      t.string :link

      t.timestamps null: false
    end
  end
end
