class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, :null => false, :default => "John Doe"
    add_column :users, :title, :string
    add_column :users, :bio, :string
  end
end
