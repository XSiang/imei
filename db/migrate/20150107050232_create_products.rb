class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :capacity
      t.boolean :presence, :default => true
      t.integer :firm_id

      t.timestamps
    end
  end
end
