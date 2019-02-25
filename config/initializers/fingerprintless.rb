module ActionView
  module Helpers
    module AssetTagHelper

      def image_tag_with_fingerprinting(source, options={})
        fingerprinting = options.delete(:fingerprinting)
        fingerprinting = true if fingerprinting.nil?

        unless fingerprinting
          source = image_tag_without_fingerprinting(source, options)
          source.sub(/(\-[a-f0-9]+)\.(png|gif|jpg)"/, '.\2"').html_safe
        else
          image_tag_without_fingerprinting(source, options)
        end
      end
      alias_method_chain :image_tag, :fingerprinting

      def favicon_link_tag_with_fingerprinting(source, options={})
        fingerprinting = options.delete(:fingerprinting)
        fingerprinting = true if fingerprinting.nil?

        unless fingerprinting
          source = favicon_link_tag_without_fingerprinting(source, options)
          source.sub(/(\-[a-f0-9]+)\.(png|gif|jpg)"/, '.\2"').html_safe
        else
          favicon_link_tag_without_fingerprinting(source, options)
        end
      end
      alias_method_chain :favicon_link_tag, :fingerprinting
    end
  end
end
