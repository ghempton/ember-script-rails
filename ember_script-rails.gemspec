# -*- encoding: utf-8 -*-
require 'date'
require File.expand_path("../lib/ember_script/rails/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "ember_script-rails"
  gem.version       = EmberScript::Rails::VERSION
  gem.authors       = ["Gordon L. Hempton"]
  gem.email         = ["ghempton@gmail.com"]
  gem.date          = Date.today
  gem.description   = "Asset pipeline support for EmberScript files. Uses a .em file extension."
  gem.summary       = "EmberScript Rails integration"
  gem.homepage      = "http://github.com/ghempton/ember-script-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "ember_script", ">= 0.0.4"
  gem.add_dependency "rails"

  gem.add_development_dependency "bundler", [">= 1.2.2"]
  gem.add_development_dependency "appraisal"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rspec-rails"
end

