class CreateAccomplishments < ActiveRecord::Migration
  def self.up
    create_table :accomplishments do |t|
      t.int :p_id
      t.string :content
      t.timestamps
    end
  end

  def self.down
    drop_table :accomplishments
  end
end
