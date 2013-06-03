require File.join(File.dirname(__FILE__), '..','app.rb')
require 'sinatra'
require 'rack/test'

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end