class CreateSubjsects < ActiveRecord::Migration
  def change
    create_table :subjsects do |t|
      t.references :section, index: true
      t.references :subject, index: true
      t.references :room, index: true
      t.references :schedule, index: true

      t.timestamps
    end
  end
end
