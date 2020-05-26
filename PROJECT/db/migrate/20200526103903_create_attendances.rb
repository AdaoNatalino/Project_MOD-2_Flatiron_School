class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :meeting_id
      t.integer :member_id

      t.timestamps
    end
  end
end
