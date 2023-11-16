require "application_system_test_case"

class RegistrationsTest < ApplicationSystemTestCase
  test "signing up" do
    visit sign_up_url

    fill_in "email", with: "lazaronixon@hey.com"
    fill_in "password", with: "Secret6*4*2*"
    click_on "sign_up"

    assert_text "Welcome! You have signed up successfully"
  end
end
