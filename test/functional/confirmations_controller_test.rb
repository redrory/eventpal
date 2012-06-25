require 'test_helper'

class ConfirmationsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get confirm" do
    get :confirm
    assert_response :success
  end

end
