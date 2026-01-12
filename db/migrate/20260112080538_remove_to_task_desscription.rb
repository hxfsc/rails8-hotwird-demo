class RemoveToTaskDesscription < ActiveRecord::Migration[8.0]
  def change
    remove_column :tasks, :desscription, :description
  end
end
