require "test_helper"

class User::SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get user sessions index" do
    sign_in_as @user

    get user_sessions_url
    assert_response :success
  end
end
