require "test_helper"

class Users　showControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get users　show_edit_url
    assert_response :success
  end
end
