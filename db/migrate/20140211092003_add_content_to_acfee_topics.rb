class AddContentToAcfeeTopics < ActiveRecord::Migration
  def change
    add_column :acfee_topics, :content, :text
  end
end
