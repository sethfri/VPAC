class AttendedShow < ActiveRecord::Base
  has_and_belongs_to_many :members
  belongs_to :member_group
end
