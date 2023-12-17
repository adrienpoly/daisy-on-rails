require "application_system_test_case"

class Identity::EmailsTest < ApplicationSystemTestCase
  setup do
    @user = sign_in_as(users(:lazaro_nixon))
  end

  test "updating the email" do
    visit edit_identity_email_path

    fill_in "New email", with: "new_email@hey.com"
    fill_in "Password challenge", with: "123456"
    click_on "Save changes"

    assert_text "Your email has been changed"
  end

  test "sending a verification email" do
    @user.update! verified: false

    visit edit_identity_email_path

    click_on "Re-send verification email"

    assert_text "We sent a verification email to your email address"
  end
end
