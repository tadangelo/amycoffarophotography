require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CoffaroPhoto2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  	config.secret_key_base = ENV["SECRET_KEY_BASE"]

  	config.action_mailer.smtp_settings = {
	  address: "amy_coffaro04@yahoo.com",
	  port: 587,
	  domain: "http://amycoffarophotography.herokuapp.com/",
	  user_name: "<username>",
	  password: "<password>",
	  authentication: :plain,
	  enable_starttls_auto: true
	}

	config.action_mailer.default_url_options = {
	  host: "http://amycoffarophotography.herokuapp.com/"
	}
  end
end
