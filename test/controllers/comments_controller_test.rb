require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "comment_create" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	place = FactoryGirl.create(:place)

  	post :create, :place_id => place.id, :comment => {
  		:message => "BIKE",
		:rating => "3_star"
  	}

  	assert_equal 1, user.comments.count
  	assert_redirected_to place_path(place)
  end
end
