class RemovePrimaryContactInfoFromMemberGroups < ActiveRecord::Migration
  def change
    remove_column :member_groups, :email, :string
    remove_column :member_groups, :primary_contact, :string
  end
end
