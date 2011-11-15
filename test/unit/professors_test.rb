require 'test_helper'

class ProfessorsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Professors.new.valid?
  end
end
