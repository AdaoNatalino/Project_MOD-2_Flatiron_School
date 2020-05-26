class CreateCults < ActiveRecord::Migration[6.0]
  def change
    create_table :cults do |t|
      t.string :name
      t.string :slogan
      t.string :building_name

      t.timestamps
    end
  end
end
