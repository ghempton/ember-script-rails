# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "ember_script-rails"
  gem.homepage = "http://github.com/ghempton/ember-script-rails"
  gem.license = "MIT"
  gem.summary = %Q{EmberScript Rails integration}
  gem.description = %Q{Support for EmberScript templates with .em extension}
  gem.email = "ghempton@gmail.com"
  gem.authors = ["Gordon L. Hempton"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new