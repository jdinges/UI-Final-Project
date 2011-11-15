require 'test_helper'

class AccomplishmentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Accomplishment.new.valid?
  end
end
