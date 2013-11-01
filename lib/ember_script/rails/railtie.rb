require 'rails/railtie'

module EmberScript::Rails
  class Railtie < ::Rails::Railtie
    config.app_generators.javascript_engine :em
  end
end
