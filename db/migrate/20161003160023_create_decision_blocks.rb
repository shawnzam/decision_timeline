class CreateDecisionBlocks < ActiveRecord::Migration
  def change
    create_table :decision_blocks do |t|
      t.text :decision_text
      t.integer :value
      t.references :timeline, index: true
      t.integer :ordering
      t.string :type

      t.timestamps
    end
  end
end
