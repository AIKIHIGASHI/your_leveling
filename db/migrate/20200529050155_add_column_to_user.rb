class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :image, default: "64096.png"
      t.integer :level, default: 0
      t.integer :exp, default: 0
      t.timestamps
    end
end
