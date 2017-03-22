class Course < ActiveRecord::Base
  has_many :videos
  has_many :subscribes
  has_many :users, through: :subscribes
end
