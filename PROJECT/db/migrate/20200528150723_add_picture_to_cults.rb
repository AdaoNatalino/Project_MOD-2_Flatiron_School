class AddPictureToCults < ActiveRecord::Migration[6.0]
  def change
    add_column :cults, :picture, :string
  end
end
