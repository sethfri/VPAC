class AddPositionColumnToBoardMembers < ActiveRecord::Migration
  def change
    add_column :board_members, :position, :string
  end
end
