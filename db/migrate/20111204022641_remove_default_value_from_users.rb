class RemoveDefaultValueFromUsers < ActiveRecord::Migration
  def up
    change_column_default :users, :name, nil
  end

  def down
    change_column_default :users, :name, "John Doe"
  end
end
