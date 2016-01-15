module EmberScript
  module Rails
    class Engine < ::Rails::Engine
      config.ember_script = ActiveSupport::OrderedOptions.new

      initializer "ember_script.setup", :after => :'load_environment_config', :group => :all do |app|
        app.config.assets.configure do |env|
          env.register_engine '.em', EmberScript::EmberScriptTemplate, mime_type: 'application/javascript'
          env.register_engine '.js.em', EmberScript::EmberScriptTemplate, mime_type: 'application/javascript'
        end
      end
    end
  end
end
