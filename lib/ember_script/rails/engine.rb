module EmberScript
  module Rails
    class Engine < ::Rails::Engine
      config.ember_script = ActiveSupport::OrderedOptions.new

      initializer "ember_script.setup", :after => :'load_environment_config', :group => :all do |app|
        if app.config.assets.enabled || ::Rails::VERSION::MAJOR == 4
          app.assets.register_engine '.em', EmberScript::EmberScriptTemplate
        end
      end
    end
  end
end
