class RemoveAInUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :image, :string 
    remove_column :users, :level, :integer
    remove_column :users, :exp,   :integer
  end
end
