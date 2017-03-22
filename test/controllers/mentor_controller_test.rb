require 'test_helper'

class MentorControllerTest < ActionController::TestCase
  test "should get myCourse" do
    get :myCourse
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

end
