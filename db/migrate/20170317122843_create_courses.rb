class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :category
      t.string :key
      t.string :title
      t.string :homepage
      t.string :subtitle
      t.string :level
      t.string :image
      t.string :banner_image
      t.string :teaser_video
      t.string :summary
      t.string :short_summay
      t.string :syllabus
      t.string :faq
      t.integer :expected_duration

      t.timestamps null: false
    end
  end
end
