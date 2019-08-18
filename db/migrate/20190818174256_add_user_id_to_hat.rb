class AddUserIdToHat < ActiveRecord::Migration[5.2]
  def change
    add_column :hats, :user_id, :integer
    add_index :hats, :user_id
  end
end
