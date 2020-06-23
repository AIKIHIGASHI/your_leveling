class C < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :task_exp, :integer, default: 0
  end
end
