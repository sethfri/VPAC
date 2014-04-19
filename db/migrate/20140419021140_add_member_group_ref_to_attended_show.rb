class AddMemberGroupRefToAttendedShow < ActiveRecord::Migration
  def change
    add_reference :attended_shows, :member_group, index: true
  end
end
