class CreatePapers < ActiveRecord::Migration
  def self.up
    create_table :papers do |t|
      t.int :p_id
      t.string :title
      t.string :filename
      t.timestamps
    end
  end

  def self.down
    drop_table :papers
  end
end
