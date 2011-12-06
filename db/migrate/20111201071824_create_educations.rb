class CreateEducations < ActiveRecord::Migration
  def self.up
    create_table :educations do |t|
      t.string :university
      t.string :degree
      t.string :year
      t.string :city
      t.string :state
      t.string :country
      t.timestamps
    end
  end

  def self.down
    drop_table :educations
  end
end
