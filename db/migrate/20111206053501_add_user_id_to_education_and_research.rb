class AddUserIdToEducationAndResearch < ActiveRecord::Migration
  def change
    change_table :educations do |t|
      t.integer :user_id
    end
    
    change_table :researches do |t|
      t.integer :user_id
    end
  end
end
