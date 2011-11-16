class CreatePapers < ActiveRecord::Migration
  def self.up
    create_table :papers do |t|
      t.integer :user_id
      t.string :title, :null => false, :default => "untitled"
      t.timestamps
    end
  end

  def self.down
    drop_table :papers
  end
end
