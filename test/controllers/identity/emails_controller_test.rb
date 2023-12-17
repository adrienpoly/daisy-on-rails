require "test_helper"

class Identity::EmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = sign_in_as(users(:one))
  end

  test "should get edit" do
    get edit_identity_email_url
    assert_response :success
  end

  test "should update email" do
    patch identity_email_url, params: {email: "new_email@hey.com", password_challenge: "123456"}
    assert_redirected_to root_url
  end

  test "should not update email with wrong password challenge" do
    patch identity_email_url, params: {email: "new_email@hey.com", password_challenge: "SecretWrong1*3"}

    assert_response :unprocessable_entity
    assert_select "li", /#{I18n.t("activerecord.errors.models.user.attributes.password_challenge.invalid")}/
  end
end
