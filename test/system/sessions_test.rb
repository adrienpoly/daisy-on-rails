require "application_system_test_case"

class SessionsTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "signing in" do
    visit sign_in_url
    fill_in "email", with: @user.email
    fill_in "password", with: "123456"
    click_on "sign_in"

    assert_text "Signed in successfully"
  end

  test "signing out" do
    sign_in_as @user

    find_by_id("navbar_toggle").click
    click_on :sign_out, visible: true

    assert_text "That session has been logged out"
  end
end
