require "application_system_test_case"

class PasswordsTest < ApplicationSystemTestCase
  setup do
    @user = sign_in_as(users(:one))
  end

  test "updating the password" do
    visit edit_password_path

    fill_in "Current password", with: "123456"
    fill_in "New password", with: "Secret6*4*2*"
    fill_in "Confirm new password", with: "Secret6*4*2*"
    click_on "Update"

    assert_text "Your password has been changed"
  end
end
