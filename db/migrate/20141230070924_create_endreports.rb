class CreateEndreports < ActiveRecord::Migration
  def change
    create_table :endreports do |t|
      t.string :firm
      t.string :product
      t.string :batch_number
      t.datetime :start_date
      t.datetime :end_date
      t.float :total_time
      t.integer :amount

      t.timestamps
    end
  end
end
