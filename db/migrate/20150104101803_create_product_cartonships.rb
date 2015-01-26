class CreateProductCartonships < ActiveRecord::Migration
  def change
    create_table :product_cartonships do |t|
      t.integer :product_id
      t.integer :carton_id

      t.timestamps
    end
  end
end
