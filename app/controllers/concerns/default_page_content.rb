module DefaultPageContent
   extend ActiveSupport::Concern

    included do
      before_action :app_title
    end

      def app_title

        @application_title = "Chakrivyas | SampleApp"
        @seo_keywords ="Sudarsana"
     end



end
