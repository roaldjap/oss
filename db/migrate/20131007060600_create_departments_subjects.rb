class CreateDepartmentsSubjects < ActiveRecord::Migration
  def self.up
    create_table :departments_subjects do |t|
      t.integer :department_id
      t.integer :subject_id

      t.timestamps
    end
  end

  def self.down
    drop_table :departments_subjects
  end
end