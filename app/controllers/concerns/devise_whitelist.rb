module DeviseWhitelist
    extend ActiveSupport::Concern
#this is a concern module for custom user and admin parameters in devise (see schema.rb file)

    included do
        before_filter :custom_form_params, if: :devise_controller?
    end

    def :custom_form_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
    
end 
