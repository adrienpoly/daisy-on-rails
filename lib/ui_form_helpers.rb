module UiFormHelpers
  def ui_text_field(field_name, attributes = {}, &block)
    label = options.delete(:label) { field_name.to_s.humanize }
    type = options.delete(:type) { :text }
    @template.render Ui::Field::TextComponent.new(field_name, form_builder: self, type: type, label: label, **attributes, &block)
  end

  def ui_email_field(field_name, attributes = {}, &block)
    label = options.delete(:label) { field_name.to_s.humanize }
    type = options.delete(:type) { :email }
    @template.render Ui::Field::TextComponent.new(field_name, form_builder: self, type: type, label: label, autocomplete: "email", **attributes, &block)
  end

  def ui_password_field(field_name, attributes = {}, &block)
    label = options.delete(:label) { field_name.to_s.humanize }
    type = options.delete(:type) { :password }
    @template.render Ui::Field::TextComponent.new(field_name, form_builder: self, label: label, type: type, **attributes), &block
  end

  def ui_submit(value = nil, attributes = {})
    value ||= submit_default_value
    options.delete(:type)
    @template.render Ui::ButtonComponent.new(value, kind: :primary, type: :submit, **attributes)
  end
end
