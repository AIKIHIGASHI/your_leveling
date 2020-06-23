class B < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :task_level, :integer, default: 0
  end
end
