# frozen_string_literal: true

class Ui::BackToComponent < ApplicationComponent
  include Heroicon::Engine.helpers

  param :text, type: Dry::Types["coercible.string"]
  param :path, type: Dry::Types["coercible.string"]

  # private

  def classes
    classes = attributes.delete(:class)
    [class_names("flex items-center gap-2"), classes].compact.join(" ")
  end
end
