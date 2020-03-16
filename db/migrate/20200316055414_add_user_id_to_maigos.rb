class AddUserIdToMaigos < ActiveRecord::Migration[5.0]
  def change
    add_column :maigos, :user_id, :integer
  end
end
