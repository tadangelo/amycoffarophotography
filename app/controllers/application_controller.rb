class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  class MobileFallbackResolver < ::ActionView::FileSystemResolver
    def find_templates(name, prefix, partial, details)
      if details[:formats] == [:mobile]
        # Add a fallback for html, for the case where, eg, 'index.html.haml' exists,
        # but not 'index.mobile.haml'
        details = details.dup
        details[:formats] = [:mobile, :html]
      end
      super
    end
  end
  append_view_path MobileFallbackResolver.new('app/views')
end
