class CreateMotions < ActiveRecord::Migration
  def change
    create_table :motions do |t|
      t.string :name
      t.integer :department_id

      t.timestamps
    end
  end
end
