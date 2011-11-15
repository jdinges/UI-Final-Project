class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.integer :user_id
      t.string :title
      t.string :link
      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
