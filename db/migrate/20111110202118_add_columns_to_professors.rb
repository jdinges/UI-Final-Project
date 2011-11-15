class AddColumnsToProfessors < ActiveRecord::Migration
  def change
    add_column :professors, :bio_position, :int, :null => :false, :default => 1
    add_column :professors, :accomplishments_position, :int, :null => :false, :default => 3
    add_column :professors, :courses_position, :int, :null => :false, :default => 2
    add_column :professors, :papers_position, :int, :null => :false, :default => 4
    add_column :professors, :links_position, :int, :null => :false, :default => 5

  end
end
