require "application_system_test_case"

class SessionsTest < ApplicationSystemTestCase
  setup do
    @user = users(:lazaro_nixon)
  end

  test "visiting the index" do
    sign_in_as @user

    click_on "Devices & Sessions"
    assert_selector "h1", text: "Sessions"
  end

  test "signing in" do
    visit sign_in_url
    fill_in "email", with: @user.email
    fill_in "password", with: "Secret1*3*5*"
    click_on "sign_in"

    assert_text "Signed in successfully"
  end

  test "signing out" do
    sign_in_as @user

    click_on "Log out"
    assert_text "That session has been logged out"
  end
end
