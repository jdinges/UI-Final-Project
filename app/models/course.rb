class Course < ActiveRecord::Base
  attr_accessible :user_id, :title, :link
  
  validates_format_of :link, :with => URI::regexp(%w(http https))
  
  belongs_to :user
  
  def details
    # Get brief summary of class from school website. Somehow.
    # ... or just follow the link...
  end
  
end
