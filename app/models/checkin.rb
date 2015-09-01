class Checkin < ActiveRecord::Base
  belongs_to :camera
  belongs_to :location
  belongs_to :user
end
