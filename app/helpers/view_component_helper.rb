module ViewComponentHelper
  UI_HELPERS = {
    alert: "Ui::AlertComponent",
    badge: "Ui::BadgeComponent",
    back_to: "Ui::BackToComponent",
    button: "Ui::ButtonComponent",
    divider: "Ui::DividerComponent",
    dropdown: "Ui::DropdownComponent"
  }.freeze

  UI_HELPERS.each do |name, component|
    define_method :"ui_#{name}" do |*args, **kwargs, &block|
      render component.constantize.new(*args, **kwargs), &block
    end
  end
end
