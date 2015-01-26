class CreateUsetimes < ActiveRecord::Migration
  def change
    create_table :usetimes do |t|
      t.string :employee
      t.datetime :start_time
      t.datetime :end_time
      t.integer :dailyreport_id

      t.timestamps
    end
  end
end
