class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #following include add custom form parameters, and refer to controller concern file devise_whitelist.rb
  include DeviseWhitelist

# sessions are available to every controllers
# should also be in a concerns - maybe later :)
  before_action :set_source
  def set_source
    session[:source] = params[:q] if params[:q]
  end


end
