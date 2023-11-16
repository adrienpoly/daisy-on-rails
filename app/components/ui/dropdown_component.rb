# frozen_string_literal: true

class Ui::DropdownComponent < ApplicationComponent
  renders_many :menu_items, types: {
    divider: Ui::DividerComponent,
    link_to: lambda { |*args, **attributes|
      content_tag :li do
        attributes[:class] = class_names("!whitespace-nowrap", attributes[:class])
        concat link_to(*args, **attributes)
      end
    },
    button_to: lambda { |*args, **attributes|
      content_tag :li do
        attributes[:class] = class_names("!whitespace-nowrap", attributes[:class])
        concat button_to(*args, **attributes)
      end
    }
  }
  OPEN_FROM_MAPPING = {
    left: "dropdown-left",
    right: "dropdown-right",
    top: "dropdown-top",
    bottom: "dropdown-bottom"
  }

  ALIGN_MAPPING = {
    end: "dropdown-end"
  }

  option :open, type: Dry::Types["strict.bool"], default: proc { false }
  option :hover, type: Dry::Types["strict.bool"], default: proc { false }
  option :align, type: Dry::Types["coercible.symbol"].enum(*ALIGN_MAPPING.keys), optional: true
  option :open_from, type: Dry::Types["coercible.symbol"].enum(*OPEN_FROM_MAPPING.keys), optional: true
  option :content_classes, type: Dry::Types["coercible.string"], optional: true

  private

  def before_render
    attributes[:data] = {controller: "dropdown"}
  end

  def classes
    [component_classes, attributes[:class]].compact_blank.join(" ")
  end

  def component_classes
    class_names(
      "dropdown",
      OPEN_FROM_MAPPING[open_from],
      ALIGN_MAPPING[align],
      "dropdown-hover": hover,
      "dropdown-open": open
    )
  end

  def content_classes
    class_names("p-2 bg-base-100 dropdown-content", attributes[:content_class])
  end
end
