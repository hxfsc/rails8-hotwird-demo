class ChageTaskToDescriptionType < ActiveRecord::Migration[8.0]
  def change
    change_column :tasks, :desscription, :string
  end
end
