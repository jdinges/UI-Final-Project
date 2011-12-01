class User < ActiveRecord::Base
  #attr_accessible :username, :email, :title, :name, :office, :department, :phone_number, :bio
  acts_as_authentic
  
  has_many :courses
  has_many :papers
  has_many :educations
  has_many :researches
  
  def full_name
    "#{self.title} #{self.name}"
  end
  
  def to_s
    self.full_name
  end
end
