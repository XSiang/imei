class CreateCartonreports < ActiveRecord::Migration
  def change
    create_table :cartonreports do |t|
      t.integer :product_cartonship_id
      t.integer :endreport_id
      t.integer :amount

      t.timestamps
    end
  end
end
