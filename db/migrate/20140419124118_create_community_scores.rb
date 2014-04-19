class CreateCommunityScores < ActiveRecord::Migration
  def change
    create_table :community_scores do |t|
      t.string :school_year
      t.belongs_to :member_group, index: true
      t.decimal :number_score

      t.timestamps
    end
  end
end
