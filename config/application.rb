require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module Alzheimer
  class Application < Rails::Application
    config.time_zone = 'Guadalajara'

    config.encoding = "utf-8"

    config.filter_parameters += [:password]

    config.assets.enabled = true

    config.assets.version = '1.0'

    config.to_prepare do
      Devise::SessionsController.skip_before_filter :verify_profile
      Devise::Registrations.skip_before_filter :verify_profile
    end
  end
end
