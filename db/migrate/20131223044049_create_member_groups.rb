class CreateMemberGroups < ActiveRecord::Migration
  def change
    create_table :member_groups do |t|
      t.string :name
      t.string :photo_url
      t.text :bio

      t.timestamps
    end
  end
end
