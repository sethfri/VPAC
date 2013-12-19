class CreateAnchorLinkTopics < ActiveRecord::Migration
  def change
    create_table :anchor_link_topics do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
