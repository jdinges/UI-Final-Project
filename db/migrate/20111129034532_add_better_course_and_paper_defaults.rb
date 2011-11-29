class AddBetterCourseAndPaperDefaults < ActiveRecord::Migration
  def up
	  change_column_default :courses, :title, 'My New Course'
	  change_column_default :courses, :link, 'http://my.course.url'
	  change_column_default :papers, :title, 'My New Paper'
  end

  def down
	  change_column_default :courses, :title, nil 
	  change_column_default :courses, :link, nil 
	  change_column_default :papers, :title, nil 
  end
end
