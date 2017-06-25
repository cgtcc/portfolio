require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Portfolio
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Don't generate system test files.
    config.generators.system_tests = nil
    
    #uncomment the following to trust parameters from the scary Internet.  
    #for security reasons, you should only allow the white listed elements in the controler using params.require(:element)
    #config.action_controller.permit_all_parameters = true

#custom configuration items
#config.generators do |g|
#  g.orm :active_record
#  g.template_engine :erb
#  g.test_framework :test_unit, fixture: false
#  g.stylesheets false
#  g.javascript false
#end custom configuration items

  end
end
