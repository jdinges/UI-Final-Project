class Education < ActiveRecord::Base
  attr_accessible :university, :degree, :year, :city, :state, :country
end
