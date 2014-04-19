class CreateMemberGroupsMembersJoinTable < ActiveRecord::Migration
  def change
    create_table :member_groups_members, id: false do |t|
      t.integer :member_group_id
      t.integer :member_id
    end
  end
end
