class CreateSampleDailyreportships < ActiveRecord::Migration
  def change
    create_table :sample_dailyreportships do |t|
      t.integer :sample_id
      t.integer :dailyreport_id
      t.integer :amount

      t.timestamps
    end
  end
end
