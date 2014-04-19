class CreateAttendedShows < ActiveRecord::Migration
  def change
    create_table :attended_shows do |t|
      t.string :title
      t.string :school_year
      t.string :host_org

      t.timestamps
    end
  end
end
