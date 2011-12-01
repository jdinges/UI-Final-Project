class AddCourseNumberToCourses < ActiveRecord::Migration
  def change
    change_table :courses do |t|
      t.string :course_number
    end
  end
end
