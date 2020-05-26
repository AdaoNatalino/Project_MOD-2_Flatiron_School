class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.integer :building_id
      t.date :date

      t.timestamps
    end
  end
end
