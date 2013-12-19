class CreateAcfeeTopics < ActiveRecord::Migration
  def change
    create_table :acfee_topics do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
