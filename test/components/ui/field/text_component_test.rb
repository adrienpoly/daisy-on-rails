# frozen_string_literal: true

require "test_helper"

class Ui::Field::TextComponentTest < ViewComponent::TestCase
  setup do
    @form = form_with(User.new)
  end

  test "component renders an input" do
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: @form, required: false, label: true, error: nil, help_text: "", display: true))

    assert_selector("input[type=\"text\"][name=\"user[email]\"]")
  end

  test "component renders and help text" do
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: @form, hint: "some help text"))

    assert_selector(".label-text", text: "some help text")
    refute_selector(".error")
  end

  test "renders custom data attributes" do
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: @form, data: {custom: "value"}))

    assert_selector("input[data-custom=\"value\"]")
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: @form, autofocus: true, data: {custom: "value"}))

    assert_selector("input[data-custom=\"value\"]")
  end

  test "component can renders custom label" do
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: @form, label: "Custom label"))

    assert_selector("label", text: "Custom label")
  end

  test "component can renders a field without any label" do
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: @form, label: false))

    refute_selector("label")
  end

  test "component renders always the error even when there is a help text" do
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: @form, error: "some error", help_text: "some help text"))

    refute_text("some help text")
    assert_selector(".text-error", text: "some error")
  end

  test "component renders the model error message" do
    @form.object.errors.add(:email, "some error")
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: @form, help_text: "some help text"))

    refute_text("some help text")
    assert_selector(".text-error", text: "some error")
  end

  test "component renders an input with the object value for the field" do
    user = User.new(email: "foo@bar.com")
    form = form_with(user)
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: form, value: "fizz@bar.com"))

    assert_selector("input[value=\"foo@bar.com\"]")
  end

  test "component renders an input with the default value for the field of no value in the object" do
    render_inline(Ui::Field::TextComponent.new(:email, form_builder: @form, value: "fizz@buzz.com"))

    assert_selector("input[value=\"fizz@buzz.com\"]")
  end
end
