class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :style_name, :string, :null => false, :default => "application_colors.css"
  end
end
