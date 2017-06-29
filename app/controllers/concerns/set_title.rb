module SetTitle
    extend ActiveSupport::Concern
    included do
before_action :set_title
        def set_title
        @page_title = "Portfolio | My Portfolio website"
        end
   end
end
