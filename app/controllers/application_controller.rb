class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :prepend_view_path_if_mobile

      private

      def prepend_view_path_if_mobile
        if mobile_request?
          prepend_view_path Rails.root + 'app' + 'mobile_views'
        end
      end

      def mobile_request?
        request.subdomains.first == 'm'
      end
      helper_method :mobile_request?
end
