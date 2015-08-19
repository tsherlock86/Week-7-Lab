require 'test_helper'

class PinTest < ActiveSupport::TestCase

  should_not allow_value("www.TheMoreYouShouldKnow.com/amazing.pdf").for(:image)

  should belong_to(:user)

  test "score" do
    assert true
  end


end
