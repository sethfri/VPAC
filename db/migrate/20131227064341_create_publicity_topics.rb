class CreatePublicityTopics < ActiveRecord::Migration
  def change
    create_table :publicity_topics do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
