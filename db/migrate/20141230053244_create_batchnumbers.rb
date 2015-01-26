class CreateBatchnumbers < ActiveRecord::Migration
  def change
    create_table :batchnumbers do |t|
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end
end
