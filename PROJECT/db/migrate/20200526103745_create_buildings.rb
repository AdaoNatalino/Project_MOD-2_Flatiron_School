class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.integer :cult_id
      t.integer :location_id
      t.string :name

      t.timestamps
    end
  end
end
