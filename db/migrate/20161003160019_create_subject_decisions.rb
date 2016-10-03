class CreateSubjectDecisions < ActiveRecord::Migration
  def change
    create_table :subject_decisions do |t|
      t.references :decision_block, index: true
      t.boolean :choice_value
      t.references :timeline, index: true

      t.timestamps
    end
  end
end
