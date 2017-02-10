class RemoveUserIdFromResponses < ActiveRecord::Migration
  def change
    remove_column :responses, :user_id, :integer
  end
end
