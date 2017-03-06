require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WordsEx
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = :'zh-CN'

		config.generators do |g|
			g.orm             :active_record
			g.template_engine :erb
			g.test_framework  :test_unit
			g.stylesheets     false
			g.javascripts     false
		end
  end
end
