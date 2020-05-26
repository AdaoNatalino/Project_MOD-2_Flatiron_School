class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.date :date_of_birth

      t.timestamps
    end
  end
end
