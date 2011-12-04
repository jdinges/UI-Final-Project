class User < ActiveRecord::Base
  #attr_accessible :username, :email, :title, :name, :office, :department, :phone_number, :bio
  acts_as_authentic
  
  has_many :courses
  has_many :papers
  has_many :educations
  has_many :researches
  
  self.per_page = 10
  
  def full_name
    "#{self.title} #{self.name}"
  end
  
  def to_s
    self.full_name
  end

  #internet says this will make fancy routes
  def to_param
    self.username
  end
end
