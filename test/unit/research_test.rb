require 'test_helper'

class ResearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Research.new.valid?
  end
end
