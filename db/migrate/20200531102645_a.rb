class A < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :task_level, :integer
  end
end
