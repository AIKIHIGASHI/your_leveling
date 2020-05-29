class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text    :content
      t.string  :task_name
      t.integer :task_level
      t.integer :user_id
      t.timestamps
    end
  end
end
