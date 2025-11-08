require "test_helper"

class FollowerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #

  test "testing followeres" do
    user1 = User.first
    user1.followers
  end
end
