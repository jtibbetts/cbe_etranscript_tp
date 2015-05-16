require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fabericious

  class Application < Rails::Application

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Silence locale enforcement deprecation warning by invoking new behavior:
    #config.i18n.enforce_available_locales = true
    I18n.config.enforce_available_locales = true

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    config.railties_order = [Lti2::Engine, :main_app, :all]

    config.action_dispatch.default_headers = {
        'X-Frame-Options' => ''
    }

  end

end
