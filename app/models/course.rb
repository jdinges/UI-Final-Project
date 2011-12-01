class Course < ActiveRecord::Base
  attr_accessible :user_id, :title, :link, :course_number
  
  validates_format_of :link, :with => URI::regexp(%w(http https))
  # Probably ought to validate the course number format. Maybe
  
  belongs_to :user
  
  def details
    # Get brief summary of class from school website. Somehow.
    # ... or just follow the link...
  end
  
end
