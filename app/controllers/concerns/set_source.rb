module SetSource
    extend ActiveSupport::Concern

    included do
            #implement sessions
            #sessions are available to every controllers
            #set_source set the source url parameter (referral url)
            before_action :set_source
            def set_source
                session[:source] = params[:q] if params[:q]
            end
    end
end
