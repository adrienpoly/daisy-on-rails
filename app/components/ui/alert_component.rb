# frozen_string_literal: true

class Ui::AlertComponent < ApplicationComponent
  include Heroicon::Engine.helpers
  KIND_MAPPING = {
    info: "alert-info",
    success: "alert-success",
    warning: "alert-warning",
    error: "alert-error"
  }

  ICON_MAPPING = {
    info: "information-circle",
    success: "check-circle",
    warning: "exclamation-triangle",
    error: "x-circle"
  }

  param :text, optional: true
  option :kind, type: Dry::Types["coercible.symbol"].enum(*KIND_MAPPING.keys), optional: true

  def call
    content_tag(:div, class: classes, **attributes.except(:class)) do
      concat heroicon icon, variant: :outline, options: {class: "h-8 w-8"}
      concat content
    end
  end

  private

  def icon
    ICON_MAPPING[kind] || "information-circle"
  end

  def classes
    [component_classes, attributes[:class]].join(" ")
  end

  def component_classes
    class_names("alert", KIND_MAPPING[kind])
  end

  def content
    text.presence || super
  end
end
