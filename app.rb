require 'neo4j'

require './models/holiday'
require './models/user'

Neo4j::Session.open(:server_db)

enable :sessions

before '/holidays*' do
  if session[:user_token].nil?
    session[:user_token] = (0...8).map { (65 + rand(26)).chr  }.join
    User.create!(token: session[:user_token])
  end
end

get '/' do
  redirect to('/holidays')
end

get '/holidays' do
  @holidays = Holiday.all

  erb :index
end

get '/holidays/:region' do
  @holiday = Holiday.find(params[:region]) or redirect to('/')

  erb :holiday
end

get '/fresh_session' do
  session[:user_token] = nil

  redirect to('/holidays')
end
