class CreateCartons < ActiveRecord::Migration
  def change
    create_table :cartons do |t|
      t.string :name

      t.timestamps
    end
  end
end
