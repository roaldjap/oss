class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
  t.string :name
      t.string :desc
      t.integer :load
      t.string :department, index: true

      t.timestamps
    end
  end
end
