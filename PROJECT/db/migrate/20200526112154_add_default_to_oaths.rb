class AddDefaultToOaths < ActiveRecord::Migration[6.0]
  def change
    change_column_default :oaths, :membership_level, 0
  end
end


