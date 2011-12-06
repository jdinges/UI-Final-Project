class Education < ActiveRecord::Base
  attr_accessible :university, :degree, :year, :city, :state, :country, :user_id
  belongs_to :user
end
