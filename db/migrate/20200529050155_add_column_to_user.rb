class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name,  :string
    add_column :users, :image, :string
    add_column :users, :level, :integer
    add_column :users, :exp,   :integer
  end
end
