class AddMemberIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :member_id, :integer
  end
end
