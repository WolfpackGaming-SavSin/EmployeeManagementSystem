class RemoveUserGroupsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_groups
    drop_table :groups
  end
end
