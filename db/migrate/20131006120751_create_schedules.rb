class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :day, index: true
      t.references :timeslot, index: true
      t.references :subjsect, index: true

      t.timestamps
    end
  end
end
