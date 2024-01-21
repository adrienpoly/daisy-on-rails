require "rouge"

module MarkdownRails
  module Helper
    module DaisyRouge
      include MarkdownRails::Helper::Rouge

      def block_code(code, language)
        content_tag :pre, class: language do
          content_tag :code do
            raw highlight_code code, language
          end
        end
      end
    end
  end
end
