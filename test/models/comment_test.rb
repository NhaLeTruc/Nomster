require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "rating stars" do
  	user = FactoryGirl.create(:user)
    place = FactoryGirl.create(:place)
    comment = FactoryGirl.create(:comment)

    expected = 'three star'
    actual = comment.humanized_rating
    assert_equal expected, actual
  end
end
