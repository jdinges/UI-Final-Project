class Paper < ActiveRecord::Base
  attr_accessible :user_id, :title, :authors, :publisher, :date, :page_count, :link
  
  belongs_to :user
  
  def does_paper_exist
    # Check to see if paper is exists. Check that link isn't broken
    
  end
  
  def get_info
    # Follow link and see what extra details you can get from link.
    
    # Title
    
    # Author(s)
    
    # Abstract?
  end
  
  def to_s
    "#{self.title}"
  end
  
end
