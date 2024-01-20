require "test_helper"

class User::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "renders the page for authenticated user" do
    sign_in_as(users(:one))
    get user_dashboard_path
    assert_response :success
  end

  test "it does not render the page for unauthenticated user" do
    get user_dashboard_path
    assert_response :redirect
  end
end
