class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #following include add custom form parameters, and refer to controller concern file devise_whitelist.rb
  include DeviseWhitelist
  include SetSource

#overriding the current_user method
#we want current user to be available even if current_user is not logged in
  def current_user 
    super #will never return NIL
  end


end
