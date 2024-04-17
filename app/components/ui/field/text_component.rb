# frozen_string_literal: true

class Ui::Field::TextComponent < ApplicationComponent
  renders_one :top_right_label

  param :name, optional: true
  option :form_builder, type: Dry::Types["nominal.any"], optional: true
  option :label, type: Dry::Types["strict.false"] | Dry::Types["coercible.string"], optional: true
  option :error, type: Dry::Types["coercible.string"], optional: true
  option :hint, type: Dry::Types["coercible.string"], optional: true
  option :value, type: Dry::Types["coercible.string"], optional: true
  option :wrapper_class, type: Dry::Types["coercible.string"], optional: true

  private

  def value
    return super unless form_builder&.object

    form_builder.object[name] || super
  end

  def field_classes
    classes = attributes.delete(:class)
    [class_names("input input-bordered w-full", "input-error": errors), classes].compact.join(" ")
  end

  def wrapper_classes
    # attributes.delete(:wrapper_class)
  end

  def errors
    return error if error
    return unless form_builder&.object

    form_builder.object.errors[name]&.to_sentence&.presence
  end
end
