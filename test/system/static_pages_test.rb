require "application_system_test_case"

class StaticPagesTest < ApplicationSystemTestCase
  test "About" do
    visit page_path(:about)

    assert_selector "h1", text: "About"
  end

  test "Legas" do
    visit page_path(:legals)

    assert_selector "h1", text: "Terms and Conditions"
  end
end
