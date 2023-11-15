module Components
  module Ui
    module Field
      module TestHelpers
        def form_with(object, options = {})
          object_name = options[:as] || object.class.name.underscore
          ActionView::Helpers::FormBuilder.new(object_name, object, template, options)
        end

        def template
          lookup_context = ActionView::LookupContext.new(ActionController::Base.view_paths)

          ActionView::Base.new(lookup_context, {}, ApplicationController.new)
        end
      end
    end
  end
end
