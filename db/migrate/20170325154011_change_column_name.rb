class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :done_videos, :link, :link_key
  end
end
