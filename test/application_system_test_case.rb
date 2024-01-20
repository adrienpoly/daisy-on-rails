require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: (ENV["MAGIC_TEST"] ? :chrome : :headless_chrome), screen_size: (ENV["MAGIC_TEST"] ? [800, 1400] : [1400, 1400])

  def sign_in_as(user)
    visit sign_in_url
    fill_in :email, with: user.email
    fill_in :password, with: "123456"
    click_on "sign_in"

    assert_current_path user_dashboard_url
    user
  end
end
