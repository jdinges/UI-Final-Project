require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Professor.new.valid?
  end
end
