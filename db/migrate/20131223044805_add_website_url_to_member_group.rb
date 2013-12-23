class AddWebsiteUrlToMemberGroup < ActiveRecord::Migration
  def change
    add_column :member_groups, :website_url, :string
  end
end
