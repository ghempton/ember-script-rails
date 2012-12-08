module EmberScript
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_initialize do |app|
        require 'ember_script-rails'

        if app.config.assets.enabled
          require 'sprockets'
          require 'sprockets/engines'
          Sprockets.register_engine '.em', EmberScript::EmberScriptTemplate
        end
      end
    end
  end
end