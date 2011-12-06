class AddStyleToUser < ActiveRecord::Migration
  def change
    add_column :users, :style_id, :integer, :default => 1 
  end
end
