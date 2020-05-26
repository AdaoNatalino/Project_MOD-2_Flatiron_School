class CreateOaths < ActiveRecord::Migration[6.0]
  def change
    create_table :oaths do |t|
      t.integer :member_id
      t.integer :cult_id
      t.integer :membership_level

      t.timestamps
    end
  end
end
