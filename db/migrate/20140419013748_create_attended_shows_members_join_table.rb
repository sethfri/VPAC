class CreateAttendedShowsMembersJoinTable < ActiveRecord::Migration
  def change
    create_table :attended_shows_members, id: false do |t|
      t.integer :attended_show_id
      t.integer :member_id
    end
  end
end
