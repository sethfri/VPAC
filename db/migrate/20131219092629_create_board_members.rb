class CreateBoardMembers < ActiveRecord::Migration
  def change
    create_table :board_members do |t|
      t.string :name
      t.text :bio
      t.string :photo_url
      t.string :email

      t.timestamps
    end
  end
end
