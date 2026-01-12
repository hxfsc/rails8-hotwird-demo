class ChangeTaskDescriptToTasks < ActiveRecord::Migration[8.0]
  def change
    change_column :tasks, :desscription, :description, :text
  end
end
