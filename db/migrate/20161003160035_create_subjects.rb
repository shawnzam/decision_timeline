class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :uid

      t.timestamps
    end
  end
end
