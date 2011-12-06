class Research < ActiveRecord::Base
  attr_accessible :title, :link, :description, :user_id
  belongs_to :user
end
