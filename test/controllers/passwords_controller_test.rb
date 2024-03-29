require "test_helper"

class PasswordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = sign_in_as(users(:one))
  end

  test "should get edit" do
    get edit_password_url
    assert_response :success
  end

  test "should update password" do
    patch password_url, params: {password_challenge: "123456", password: "Secret6*4*2*", password_confirmation: "Secret6*4*2*"}
    assert_redirected_to user_dashboard_path
  end

  test "should not update password with wrong password challenge" do
    patch password_url, params: {password_challenge: "SecretWrong1*3", password: "Secret6*4*2*", password_confirmation: "Secret6*4*2*"}

    assert_response :unprocessable_entity
    assert_select "li", /#{I18n.t("activerecord.errors.models.user.attributes.password_challenge.invalid")}/
  end
end
