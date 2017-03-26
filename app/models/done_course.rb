class DoneCourse < ActiveRecord::Base
  has_many :users
end
