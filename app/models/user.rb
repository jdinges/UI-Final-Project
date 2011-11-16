class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :courses
  has_many :papers
  
  def full_name
    "#{self.title} #{self.name}"
  end
  
  def to_s
    self.full_name
  end
end
