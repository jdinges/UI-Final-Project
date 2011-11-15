class Course < ActiveRecord::Base
  attr_accessible :user_id, :title, :link
  
  belongs_to :user
end
