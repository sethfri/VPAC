class CreateAttendedShowsMemberGroupsJoinTable < ActiveRecord::Migration
  def change
    create_table :attended_shows_member_groups, id: false do |t|
      t.integer :attended_show_id
      t.integer :member_group_id
    end
  end
end
