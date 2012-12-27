module EmberScript
  module Rails
    class Engine < ::Rails::Engine
      config.ember_script = ActiveSupport::OrderedOptions.new

      initializer "ember_script.setup", :after => :'load_environment_config', :group => :all do |app|
        if app.config.assets.enabled
          sprockets = if ::Rails::VERSION::MAJOR == 4
            Sprockets.respond_to?('register_engine') ? Sprockets : app.assets
          else
            app.assets
          end
          sprockets.register_engine '.em', EmberScript::EmberScriptTemplate
        end
      end
    end
  end
end