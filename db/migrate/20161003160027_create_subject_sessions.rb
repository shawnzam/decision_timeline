class CreateSubjectSessions < ActiveRecord::Migration
  def change
    create_table :subject_sessions do |t|
      t.references :timeline, index: true
      t.string :title

      t.timestamps
    end
  end
end
