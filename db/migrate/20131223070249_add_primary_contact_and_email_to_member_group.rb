class AddPrimaryContactAndEmailToMemberGroup < ActiveRecord::Migration
  def change
    add_column :member_groups, :primary_contact, :string
    add_column :member_groups, :email, :string
  end
end
