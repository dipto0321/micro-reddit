class ChangeCommenterIdToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :commenter_id, :user_id
  end
end
