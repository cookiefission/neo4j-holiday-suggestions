require 'sinatra'
require 'rack/test'
require './app'

set :environment, :test
set :views, './views'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
