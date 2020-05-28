class RemoveCountryFromLocations < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :country 
    add_column :locations, :picture, :string
  end
end
