json.extract! course, :id, :category, :key, :title, :homepage, :subtitle, :level, :image, :banner_image, :teaser_video, :summary, :short_summay, :required_knowledge, :syllabus, :faq, :expected_duration, :created_at, :updated_at
json.url course_url(course, format: :json)
