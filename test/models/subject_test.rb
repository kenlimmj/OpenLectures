require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  def setup
    @s = build(:subject)
  end
  test "Does not save Subject when title is empty" do
    @s.title=""
    assert !@s.save, "Saved subject with empty title"
  end
end
