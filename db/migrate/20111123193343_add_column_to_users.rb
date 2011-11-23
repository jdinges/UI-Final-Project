class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :style_name, :string, :null => false, :default => "application.css"
  end
end
