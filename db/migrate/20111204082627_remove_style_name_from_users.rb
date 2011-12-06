class RemoveStyleNameFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :style_name
  end

  def down
    add_column :users, :style_name, :string
  end
end
