class Education < ActiveRecord::Base
  attr_accessible :university, :degree, :year, :city, :state, :country, :user_id
  belongs_to :user

  def to_s
    "#{year} -- Degree in #{degree} at #{university}"
  end
end
