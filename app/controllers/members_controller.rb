class MembersController < ApplicationController::Base
  include ControllerAuthentication
  
  before_filter :require_user
  
  filter_access_to :all
  
  protect_from_forgery
end
