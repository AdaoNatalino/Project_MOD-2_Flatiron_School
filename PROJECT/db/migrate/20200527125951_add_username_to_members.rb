class AddUsernameToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :username, :string
    add_column :members, :password_digest, :string
  end
end
