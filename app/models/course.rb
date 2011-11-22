class Course < ActiveRecord::Base
  attr_accessible :user_id, :title, :link
  
  belongs_to :user
  
  def details
    # Get brief summary of class from school website. Somehow.
  end
  
end
