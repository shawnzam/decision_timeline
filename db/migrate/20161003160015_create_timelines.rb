class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :title
      t.references :subject_session, index: true

      t.timestamps
    end
  end
end
