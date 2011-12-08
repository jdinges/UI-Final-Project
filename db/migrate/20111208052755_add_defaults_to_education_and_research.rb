class AddDefaultsToEducationAndResearch < ActiveRecord::Migration
  def change
    change_column_default :educations, :year, "20XX"
    change_column_default :educations, :degree, "Your Degree"
    change_column_default :educations, :year, "Your University"

    change_column_default :researches, :title, "My Research Paper"
    change_column_default :researches, :link, "http://my.research.url"
  end
end
