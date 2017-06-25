class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #following include add custom form parameters, and refer to controller concern file devise_whitelist.rb
  include DeviseWhitelist
  include SetSource
  include CurrentUser


end
