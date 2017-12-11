require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
# require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GoodForm
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    config.domain = ENV["SITE_DOMAIN"] || "example.com"
    config.origins = ENV["ORIGINS"].present? ENV["ORIGINS"].split(",") : "example.com"
    config.default_return_url = ENV["SITE_RETURN_URL"] || "http://example.com"
    config.mailfrom_address = ENV["MAILFROM_ADDRESS"] || "no-reply@example.com"
    config.mailto_address = ENV["MAILTO_ADDRESS"] || "info@example.com"
    config.mailto_subject = ENV["MAILTO_SUBJECT"] || "New Contact Request"
  end
end
