class Course < ActiveRecord::Base
  has_many :subscribes
  has_many :users, through: :subscribes
end
