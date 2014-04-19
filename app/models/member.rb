class Member < ActiveRecord::Base
  has_and_belongs_to_many :attended_shows
end
