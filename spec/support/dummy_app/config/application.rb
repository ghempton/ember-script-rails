require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "action_controller/railtie"
require 'sprockets/railtie'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

if Rails.env.development?
  PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '../../../..')).freeze
  $LOAD_PATH << File.join(PROJECT_ROOT, 'lib')
  require 'ember_script-rails'
end

module DummyApp
  class Application < Rails::Application
    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'
  end
end
