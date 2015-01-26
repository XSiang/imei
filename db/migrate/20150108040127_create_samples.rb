class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.boolean :presence, :default => true

      t.timestamps
    end
  end
end
