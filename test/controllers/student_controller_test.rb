require 'test_helper'

class StudentControllerTest < ActionController::TestCase
  test "should get profile" do
    get :profile
    assert_response :success
  end

end
