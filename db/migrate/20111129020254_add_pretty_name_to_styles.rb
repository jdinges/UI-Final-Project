class AddPrettyNameToStyles < ActiveRecord::Migration
  def change
	add_column :styles, :stylesheet, :string
  end
end
