module EmberScript
  module Rails
    class Engine < ::Rails::Engine
      config.ember_script = ActiveSupport::OrderedOptions.new

      initializer "ember_script.setup", :after => :append_assets_path, :group => :all do |app|
        require 'ember_script-rails'

        if app.config.assets.enabled
          app.assets.register_engine '.em', EmberScript::EmberScriptTemplate
        end
      end
    end
  end
end