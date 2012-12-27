require 'spec_helper'

describe 'assets' do

  it 'compiles EmberScript assets' do
    get '/assets/application.js'
    response.body.should =~ /Ember\.Object\.extend/
  end
  
end