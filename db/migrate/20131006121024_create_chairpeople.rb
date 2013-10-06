class CreateChairpeople < ActiveRecord::Migration
  def change
    create_table :chairpeople do |t|
      t.string :lname
      t.string :fname
      t.string :mi
      t.references :department, index: true

      t.timestamps
    end
  end
end
