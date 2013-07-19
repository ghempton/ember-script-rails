ENV["RAILS_ENV"] = "test"

require 'bundler'
Bundler.require(:default, :test)

require 'ember_script-rails'

PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..')).freeze
$LOAD_PATH << File.join(PROJECT_ROOT, 'lib')

require File.expand_path("../support/dummy_app/config/environment.rb",  __FILE__)


# require 'rspec/rails'

require 'rspec/core'

RSpec::configure do |c|
  c.backtrace_exclusion_patterns << /vendor\//
  c.backtrace_exclusion_patterns << /lib\/rspec\/rails/
end

# Extensions break w/ rails edge
#require 'rspec/rails/extensions'
require 'rspec/rails/view_rendering'
require 'rspec/rails/adapters'
require 'rspec/rails/matchers'
require 'rspec/rails/fixture_support'
require 'rspec/rails/mocks'
require 'rspec/rails/module_inclusion'
require 'rspec/rails/example'
require 'rspec/rails/vendor/capybara'
require 'rspec/rails/vendor/webrat'
