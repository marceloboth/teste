require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Teste
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :'pt-BR'
    config.encoding = "utf-8"
    config.assets.enabled = true
    config.assets.version = '1.0'
    config.assets.paths << Rails.root.join("vendor", "assets", "fonts")
    I18n.enforce_available_locales = false
  end
end
