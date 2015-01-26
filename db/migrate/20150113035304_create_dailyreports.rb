class CreateDailyreports < ActiveRecord::Migration
  def change
    create_table :dailyreports do |t|
      t.date :use_date
      t.integer :department_id
      t.integer :batchnumber_id
      t.integer :amount
      t.string :motion

      t.timestamps
    end
  end
end
