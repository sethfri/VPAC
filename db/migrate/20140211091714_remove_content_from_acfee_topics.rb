class RemoveContentFromAcfeeTopics < ActiveRecord::Migration
  def change
    remove_column :acfee_topics, :content, :string
  end
end
