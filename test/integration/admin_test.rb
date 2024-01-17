require "application_system_test_case"

class AdminTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "visiting the admin as a non admin user" do
    sign_in_as users(:one)

    get avo_path
    assert_response :not_found
  end

  test "visiting the admin as an admin user" do
    sign_in_as users(:admin)

    get avo_path
    assert_response :redirect
    assert_redirected_to "/admin/resources/users"
  end
end
