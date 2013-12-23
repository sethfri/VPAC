class ChangeBioToDescriptionInMemberGroup < ActiveRecord::Migration
  def change
    rename_column :member_groups, :bio, :description
  end
end
