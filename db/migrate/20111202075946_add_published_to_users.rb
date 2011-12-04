class AddPublishedToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :published, :default => 0, :null => false
    end
  end
end
