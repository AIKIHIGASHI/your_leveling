class Users2 < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :string , default: "64096.png"
    add_column :users, :level, :integer, default: 0
    add_column :users, :exp,   :integer, default: 0
  end
end

