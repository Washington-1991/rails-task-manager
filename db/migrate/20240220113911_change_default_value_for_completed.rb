class ChangeDefaultValueForCompleted < ActiveRecord::Migration[7.1]
  def change
    change_column :tasks, :completed, :boolean, null: false, default: false
  end
end
