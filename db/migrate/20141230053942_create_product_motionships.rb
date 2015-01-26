class CreateProductMotionships < ActiveRecord::Migration
  def change
    create_table :product_motionships do |t|
      t.integer :product_id
      t.integer :motion_id

      t.timestamps
    end
  end
end
