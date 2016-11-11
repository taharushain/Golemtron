require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Golemtron
	class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # config.action_mailer.delivery_method = :sendmail
    # config.action_mailer.perform_deliveries = true
    # config.action_mailer.raise_delivery_errors = true
    config.to_prepare do
    	Devise::SessionsController.layout "blog"
    	# Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application"   : "devise" }
    end
end
end
